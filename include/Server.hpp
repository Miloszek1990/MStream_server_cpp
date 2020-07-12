#include <iostream>
#include <string>

class Server
{
    private:
		int port_;
        int bufferSize_;

    public:
        Server(int, int);
        ~Server();

        void error( char* );
        void getData( int, char* );
        void initializeConnection(int&, sockaddr_in&, sockaddr_in&);
        void streamLoop(int&, int&, sockaddr_in&);
};