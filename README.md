Secure Flow
=================

[![Java CI](https://github.com/mybatis/jpetstore-6/actions/workflows/ci.yaml/badge.svg)](https://github.com/mybatis/jpetstore-6/actions/workflows/ci.yaml)
[![Container Support](https://github.com/mybatis/jpetstore-6/actions/workflows/support.yaml/badge.svg)](https://github.com/mybatis/jpetstore-6/actions/workflows/support.yaml)
[![Coverage Status](https://coveralls.io/repos/github/mybatis/jpetstore-6/badge.svg?branch=master)](https://coveralls.io/github/mybatis/jpetstore-6?branch=master)
[![License](https://img.shields.io/:license-apache-brightgreen.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)

[//]: # (![mybatis-jpetstore]&#40;https://mybatis.org/images/mybatis-logo.png&#41;)

Secure Flow is a GitHub Action pipeline with security features for Maven projects.

Structure
----------
![Secure Flow](https://raw.githubusercontent.com/cl456852/jpetstore-6/master/img/structure.jpg)

## Modules
>
>
> | Name        | Description |
  > | -------------- | ----------- |
> | Gitleaks    | Gitleaks is a SAST tool for detecting and preventing hardcoded secrets like passwords, api keys, and tokens in git repos. |
> | CodeQL           | Discover vulnerabilities across a codebase with CodeQL, our industry-leading semantic code analysis engine.|
> | Sonar     | Enable your team to deliver clean code consistently and efficiently with a tool that easily integrates into the cloud DevOps platforms and extend your CI/CD workflow.|
> | Snyk     | Find and automatically fix vulnerabilities in your code, open source dependencies, containers, and infrastructure as code.|
> | Create Image   | Create a docker image containing the project |
> | Trivy   | Trivy (tri pronounced like trigger, vy pronounced like envy) is a comprehensive security scanner. |
> | Deploy| Upload the image to ECR, and deploy it to ECS|
> | ZAP | Web app vulnerbility |
> | Nuclei       | Nuclei is used to send requests across targets based on a template, leading to zero false positives and providing fast scanning on a large number of hosts. |


## How to Use

### Config

#### SONAR
- secrets.SONAR_TOKEN  
- Dsonar.projectKey

#### gitleaks


#### CodeQL-Build

#### snykScan
- secrets.SNYK_TOKEN

#### deploy
- secrets.AWS_ACCESS_KEY_ID
- secrets.AWS_SECRET_ACCESS_KEY
- env.AWS_REGION
- env.ECS_SERVICE
- env.ECS_CLUSTER
- env.ECS_TASK_DEFINITION //aws/task_definition.json
- evn.CONTAINER_NAME

### File



## License
[MIT](https://choosealicense.com/licenses/mit/)

## Run on Application Server
Running JPetStore sample under Tomcat (using the [cargo-maven2-plugin](https://codehaus-cargo.github.io/cargo/Maven2+plugin.html)).

- Clone this repository

  ```
  $ git clone https://github.com/mybatis/jpetstore-6.git
  ```

- Build war file

  ```
  $ cd jpetstore-6
  $ ./mvnw clean package
  ```

- Startup the Tomcat server and deploy web application

  ```
  $ ./mvnw cargo:run -P tomcat90
  ```

  > Note:
  >
  > We provide maven profiles per application server as follow:
  >
  > | Profile        | Description |
  > | -------------- | ----------- |
  > | tomcat90       | Running under the Tomcat 9.0 |
  > | tomcat85       | Running under the Tomcat 8.5 |
  > | tomee80        | Running under the TomEE 8.0(Java EE 8) |
  > | tomee71        | Running under the TomEE 7.1(Java EE 7) |
  > | wildfly26      | Running under the WildFly 26(Java EE 8) |
  > | wildfly13      | Running under the WildFly 13(Java EE 7) |
  > | liberty-ee8    | Running under the WebSphere Liberty(Java EE 8) |
  > | liberty-ee7    | Running under the WebSphere Liberty(Java EE 7) |
  > | jetty          | Running under the Jetty 9 |
  > | glassfish5     | Running under the GlassFish 5(Java EE 8) |
  > | glassfish4     | Running under the GlassFish 4(Java EE 7) |
  > | resin          | Running under the Resin 4 |

- Run application in browser http://localhost:8080/jpetstore/ 
- Press Ctrl-C to stop the server.


## Try integration tests

Perform integration tests for screen transition.

```
$ ./mvnw clean verify -P tomcat90
```
