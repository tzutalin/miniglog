#include <glog/logging.h>

int main() {
  google::InitGoogleLogging((char *)"Test");
  LOG(INFO) << "Dump log test";

  CHECK_NE(1, 2) << ": The world must be ending!";
  // Check if it is euqual
  CHECK_EQ(std::string("abc")[1], 'b');

  int x = 2;
  int y = 1;
  LOG_IF(ERROR, x > y) << "This should be also OK";
  return 0;
}
