#include <netinet/in.h>

#include "./include/Server.hpp"


int main(int argc, char *argv[]) {
    
    int port = 8000;
    int bufferSize = 32;
    int sockfd, newsockfd;
    sockaddr_in cli_addr;

    Server server(port, bufferSize);
    server.initializeConnection(sockfd, cli_addr);
    server.streamLoop(sockfd, newsockfd, cli_addr);

    return 0; 
}

