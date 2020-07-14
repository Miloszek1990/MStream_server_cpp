#include <iostream>
#include <string>

class Server
{
    private:
		int port_;
        int bufferSize_;
        int imgWdth_;
        int imgHght_;

        void error( char* );
        void getFrame(int& sockfd);

    public:
        Server(int, int, int, int);
        ~Server();

        void initializeConnection(int&, sockaddr_in&);
        void streamLoop(int&, int&, sockaddr_in&);
};