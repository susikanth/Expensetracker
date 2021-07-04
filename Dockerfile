FROM       centos
MAINTAINER narenn1995@gmail.com
RUN        yum install maven -y && \
           yum install git -y && \
           git init && \
           git clone https://github.com/loveisall1995/Expensetracker.git
WORKDIR    /Expensetracker
RUN        mvn compile  && \
           mvn test && \
           mvn clean install
CMD        ["java", "-jar", "/Expensetracker/target/ExpenseTracker-Spring-1.0-SNAPSHOT.jar"]
