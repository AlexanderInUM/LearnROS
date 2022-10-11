// Generated by gencpp from file udp_com/UdpSend.msg
// DO NOT EDIT!


#ifndef UDP_COM_MESSAGE_UDPSEND_H
#define UDP_COM_MESSAGE_UDPSEND_H

#include <ros/service_traits.h>


#include <udp_com/UdpSendRequest.h>
#include <udp_com/UdpSendResponse.h>


namespace udp_com
{

struct UdpSend
{

typedef UdpSendRequest Request;
typedef UdpSendResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UdpSend
} // namespace udp_com


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::udp_com::UdpSend > {
  static const char* value()
  {
    return "8e83f150e6b617df95d8728e76e0c812";
  }

  static const char* value(const ::udp_com::UdpSend&) { return value(); }
};

template<>
struct DataType< ::udp_com::UdpSend > {
  static const char* value()
  {
    return "udp_com/UdpSend";
  }

  static const char* value(const ::udp_com::UdpSend&) { return value(); }
};


// service_traits::MD5Sum< ::udp_com::UdpSendRequest> should match
// service_traits::MD5Sum< ::udp_com::UdpSend >
template<>
struct MD5Sum< ::udp_com::UdpSendRequest>
{
  static const char* value()
  {
    return MD5Sum< ::udp_com::UdpSend >::value();
  }
  static const char* value(const ::udp_com::UdpSendRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::udp_com::UdpSendRequest> should match
// service_traits::DataType< ::udp_com::UdpSend >
template<>
struct DataType< ::udp_com::UdpSendRequest>
{
  static const char* value()
  {
    return DataType< ::udp_com::UdpSend >::value();
  }
  static const char* value(const ::udp_com::UdpSendRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::udp_com::UdpSendResponse> should match
// service_traits::MD5Sum< ::udp_com::UdpSend >
template<>
struct MD5Sum< ::udp_com::UdpSendResponse>
{
  static const char* value()
  {
    return MD5Sum< ::udp_com::UdpSend >::value();
  }
  static const char* value(const ::udp_com::UdpSendResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::udp_com::UdpSendResponse> should match
// service_traits::DataType< ::udp_com::UdpSend >
template<>
struct DataType< ::udp_com::UdpSendResponse>
{
  static const char* value()
  {
    return DataType< ::udp_com::UdpSend >::value();
  }
  static const char* value(const ::udp_com::UdpSendResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UDP_COM_MESSAGE_UDPSEND_H
