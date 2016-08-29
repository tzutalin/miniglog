#include <glog/logging.h>
// Add headers for threads
#include <stdio.h>
#include <pthread.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

pthread_t newTid;

void *threadRunnableFun(void *arg) {
  LOG(WARNING) << "Run in another thread"; 
  return ((void *)0);
}

int main() {
  google::InitGoogleLogging((char *)"Test");
  LOG(INFO) << "Dump log test";

  CHECK_NE(1, 2) << ": The world must be ending!";
  // Check if it is euqual
  CHECK_EQ(std::string("abc")[1], 'b');

  int x = 2;
  int y = 1;
  LOG_IF(ERROR, x > y) << "2 > 1. This should be also OK";

  // Test dump log in different thread
  int err = pthread_create(&newTid, NULL, threadRunnableFun, NULL);
  if (err != 0) {
    LOG(FATAL) << "Unable to create a thread";
    return 1;
  }
  sleep(1);
  return 0;
}
