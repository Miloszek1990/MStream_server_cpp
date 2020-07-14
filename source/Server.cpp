#include <iostream>
#include <string>

#include <netinet/in.h>
#include <string.h>
#include <unistd.h>

#include <opencv2/opencv.hpp>

#include "../include/Server.hpp"

Server::Server(int port, int bufferSize, int imgWdth, int imgHght): 
  port_(port),
  bufferSize_(bufferSize),
  imgWdth_(imgWdth),
  imgHght_(imgHght)
{}

Server::~Server(){}

void Server::getFrame(int sockfd, int imgSize, cv::Mat& img) {
    
    int bytes;
    unsigned char sockData[imgSize];
    for (int i = 0; i < imgSize; i += bytes) {
        bytes = recv(sockfd, sockData + i, imgSize  - i, 0);
    }

    // Assign pixel value to img
    int ptr = 0;
    for (int i = 0;  i < img.rows; i++) {
        for (int j = 0; j < img.cols; j++) {                                     
          img.at<cv::Vec3b>(i,j) = cv::Vec3b(sockData[ptr + 0], sockData[ptr + 1], sockData[ptr + 2]);
          ptr = ptr + 3;
        }
    }
    //img(cv::Size(imgWdth_, imgHght_), CV_8UC3, sockData);
}

void Server::initializeConnection(int& sockfd, sockaddr_in& cli_addr)
{
    sockaddr_in serv_addr;
 
    std::cout << "Using port " << port_ << std::endl;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        perror( const_cast<char *>("ERROR opening socket") );
    bzero((char *) &serv_addr, sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons( port_ );
    if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) 
        perror( const_cast<char *>( "ERROR on binding" ) );
    listen(sockfd, 5);
}

void Server::streamLoop(int& sockfd, int& newSockfd, sockaddr_in& cli_addr)
{
    int cli_len = sizeof(cli_addr);
    int imgSize = imgHght_ * imgWdth_  * 3;

    //--- infinite wait on a connection ---
    while ( 1 ) {
      std::cout << "Waiting for new client..." << std::endl;
      if ( ( newSockfd = accept( sockfd, (struct sockaddr *) &cli_addr, (socklen_t*) &cli_len) ) < 0 )
        perror( const_cast<char *>("ERROR on accept") );
      std::cout << "Opened new communication with client" << std::endl;

      cv::Mat img = cv::Mat::zeros( imgHght_, imgWdth_, CV_8UC3);
      getFrame( newSockfd, imgSize, img);
      //cv::imwrite("../aaa.png", img);
    }
    close( newSockfd );
}