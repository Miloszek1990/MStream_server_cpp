#include <iostream>
#include <string>

class Server
{
    private:
		int port_;
        int bufferSize_;

        void error( char* );

    public:
        Server(int, int);
        ~Server();

        void getData( int, char* );
        void initializeConnection(int&, sockaddr_in&);
        void streamLoop(int&, int&, sockaddr_in&);
};