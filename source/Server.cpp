#include <iostream>
#include <string>

#include <netinet/in.h>
#include <string.h>
#include <unistd.h>

#include "../include/Server.hpp"

Server::Server(int port, int bufferSize): 
  port_(port),
  bufferSize_(bufferSize)
{}

Server::~Server(){}

void Server::error( char* msg ) {
  perror( msg );
  exit(1);
}

void Server::getData( int sockfd, char* buffer) {
  int n;
  if ( (n = read(sockfd, buffer, bufferSize_-1) ) < 0 )
    error( const_cast<char *>( "ERROR reading from socket") );
  buffer[n] = '\0';
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
    char* buffer = new char[bufferSize_];
    int cli_len = sizeof(cli_addr);
    
    //--- infinite wait on a connection ---
    while ( 1 ) {
        std::cout << "Waiting for new client..." << std::endl;
        if ( ( newSockfd = accept( sockfd, (struct sockaddr *) &cli_addr, (socklen_t*) &cli_len) ) < 0 )
            perror( const_cast<char *>("ERROR on accept") );
        std::cout << "Opened new communication with client" << std::endl;

        getData( newSockfd , buffer);
        std::string data = std::string(buffer);
        std::cout << data << std::endl;

        close( newSockfd );
    }
}