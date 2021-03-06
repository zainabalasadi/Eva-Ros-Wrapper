// Generated by gencpp from file eva_driver/Joints.msg
// DO NOT EDIT!


#ifndef EVA_DRIVER_MESSAGE_JOINTS_H
#define EVA_DRIVER_MESSAGE_JOINTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace eva_driver
{
template <class ContainerAllocator>
struct Joints_
{
  typedef Joints_<ContainerAllocator> Type;

  Joints_()
    : j1(0.0)
    , j2(0.0)
    , j3(0.0)
    , j4(0.0)
    , j5(0.0)
    , j6(0.0)  {
    }
  Joints_(const ContainerAllocator& _alloc)
    : j1(0.0)
    , j2(0.0)
    , j3(0.0)
    , j4(0.0)
    , j5(0.0)
    , j6(0.0)  {
  (void)_alloc;
    }



   typedef double _j1_type;
  _j1_type j1;

   typedef double _j2_type;
  _j2_type j2;

   typedef double _j3_type;
  _j3_type j3;

   typedef double _j4_type;
  _j4_type j4;

   typedef double _j5_type;
  _j5_type j5;

   typedef double _j6_type;
  _j6_type j6;





  typedef boost::shared_ptr< ::eva_driver::Joints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::eva_driver::Joints_<ContainerAllocator> const> ConstPtr;

}; // struct Joints_

typedef ::eva_driver::Joints_<std::allocator<void> > Joints;

typedef boost::shared_ptr< ::eva_driver::Joints > JointsPtr;
typedef boost::shared_ptr< ::eva_driver::Joints const> JointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::eva_driver::Joints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::eva_driver::Joints_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::eva_driver::Joints_<ContainerAllocator1> & lhs, const ::eva_driver::Joints_<ContainerAllocator2> & rhs)
{
  return lhs.j1 == rhs.j1 &&
    lhs.j2 == rhs.j2 &&
    lhs.j3 == rhs.j3 &&
    lhs.j4 == rhs.j4 &&
    lhs.j5 == rhs.j5 &&
    lhs.j6 == rhs.j6;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::eva_driver::Joints_<ContainerAllocator1> & lhs, const ::eva_driver::Joints_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace eva_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::eva_driver::Joints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eva_driver::Joints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eva_driver::Joints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eva_driver::Joints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eva_driver::Joints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eva_driver::Joints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::eva_driver::Joints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30e3b3187560ea4f8505d287c27ca8d4";
  }

  static const char* value(const ::eva_driver::Joints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30e3b3187560ea4fULL;
  static const uint64_t static_value2 = 0x8505d287c27ca8d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::eva_driver::Joints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eva_driver/Joints";
  }

  static const char* value(const ::eva_driver::Joints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::eva_driver::Joints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 j1\n"
"float64 j2\n"
"float64 j3\n"
"float64 j4\n"
"float64 j5\n"
"float64 j6\n"
;
  }

  static const char* value(const ::eva_driver::Joints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::eva_driver::Joints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.j1);
      stream.next(m.j2);
      stream.next(m.j3);
      stream.next(m.j4);
      stream.next(m.j5);
      stream.next(m.j6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Joints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::eva_driver::Joints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::eva_driver::Joints_<ContainerAllocator>& v)
  {
    s << indent << "j1: ";
    Printer<double>::stream(s, indent + "  ", v.j1);
    s << indent << "j2: ";
    Printer<double>::stream(s, indent + "  ", v.j2);
    s << indent << "j3: ";
    Printer<double>::stream(s, indent + "  ", v.j3);
    s << indent << "j4: ";
    Printer<double>::stream(s, indent + "  ", v.j4);
    s << indent << "j5: ";
    Printer<double>::stream(s, indent + "  ", v.j5);
    s << indent << "j6: ";
    Printer<double>::stream(s, indent + "  ", v.j6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EVA_DRIVER_MESSAGE_JOINTS_H
