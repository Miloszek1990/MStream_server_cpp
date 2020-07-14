#include <iostream>
#include <string>

#include <opencv2/opencv.hpp>

class Server
{
    private:
		int port_;
        int bufferSize_;
        int imgWdth_;
        int imgHght_;

        void getFrame(int, int, cv::Mat&);

    public:
        Server(int, int, int, int);
        ~Server();

        void initializeConnection(int&, sockaddr_in&);
        void streamLoop(int&, int&, sockaddr_in&);
};