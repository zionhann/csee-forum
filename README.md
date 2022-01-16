# 전전포럼

## 개발기간(2021.12.6 ~ 2021.12.17, 12일)

## 개요

![overview](https://user-images.githubusercontent.com/45687157/147681808-4d52de63-c3f9-4772-b34e-6adca908420a.png)


## 기술 스택

| Stack                 | Name      |
| ---                   | ---       |
| Language              | ![Java](https://camo.githubusercontent.com/0d0b535e7b4012a28a4845ffa0056e7caeb63b31bb81b52ca8ef1db68b0d7f85/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4a6176612d4544384230302e7376673f267374796c653d666f722d7468652d6261646765266c6f676f3d4a617661266c6f676f436f6c6f723d7768697465)      |
| Web Framework         | ![Spring](https://camo.githubusercontent.com/1854be13b1b643c7331b810eb9ebf7360111ec54609e98c80403ffa99ccd5652/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f537072696e672d3644423333463f7374796c653d666f722d7468652d6261646765266c6f676f3d537072696e67266c6f676f436f6c6f723d7768697465)
| WAS                   | ![Tomcat](https://camo.githubusercontent.com/abc9ee25df5a1be273384c29ea361a507502653fff23834f12d21313a9f0b869/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f546f6d6361742d4638444337353f7374796c653d666f722d7468652d6261646765266c6f676f3d417061636865253230546f6d636174266c6f676f436f6c6f723d626c61636b)
| Database              | ![MariaDB](https://camo.githubusercontent.com/338932d233ce4f9aa50eecf4f89674b5a0653fb63f1068c38f79f344b409cae5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4d6172696144422d3030333534353f7374796c653d666f722d7468652d6261646765266c6f676f3d4d617269614442266c6f676f436f6c6f723d626c61636b)
| Persistence Framework | myBatis   |
| VCS                   | ![Git](https://camo.githubusercontent.com/fdb91eb7d32ba58701c8e564694cbe60e706378baefa180dbb96e2c1cfb9ec0f/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4769742d4630353033323f7374796c653d666f722d7468652d6261646765266c6f676f3d476974266c6f676f436f6c6f723d7768697465)


## 팀원 소개

| 이름          | 닉네임                                   |
| ---          | ---                                     |
| 한시온        | ![zionhann](https://camo.githubusercontent.com/a01b5919fed4d42ea54a9a717103d670994f915e79726977ffc4dc41a2cacf3c/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f5a494f4e48414e4e2d3138313731372e7376673f267374796c653d666f722d7468652d6261646765266c6f676f3d476974687562266c6f676f436f6c6f723d7768697465)    |  
| 김정현        | ![hedbewd](https://camo.githubusercontent.com/52d4e2926d89525ace80378be7cc79c31b0e9dd05f0931aa3a53b2a7b08c4670/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f484544424557442d3138313731372e7376673f267374796c653d666f722d7468652d6261646765266c6f676f3d476974687562266c6f676f436f6c6f723d7768697465)       |

## 프로젝트 목적

1. 한 학기 동안 배운 스택들을 활용하여 JSP 기반의 웹페이지를 구현한다.
2. STS(Spring Tool Suite) IDE 사용법을 익힌다.

## 프로젝트 구조

```shell
    ├─src
      └─main
          ├─java
          │  └─com
          │      └─forum
          │          └─csee
          │              ├─controller
          │              │      BoardController.java
          │              │      LoginCheckInterceptor.java
          │              │      LoginController.java
          │              │
          │              ├─dao
          │              │      BoardDAO.java
          │              │      BoardDaoImpl.java
          │              │      UserDAO.java
          │              │
          │              ├─service
          │              │      Service.java
          │              │      ServiceImpl.java
          │              │      UserServiceImpl.java
          │              │
          │              └─vo
          │                      BoardVO.java
          │                      UserVO.java
          │
          ├─resources  
          │  │  mybatis-config.xml
          │  │
          │  └─mappers
          │          boardMapper.xml
          │          userMapper.xml
          │
          └─webapp
              ├─resources
              │  └─css
              │          style.css
              │
              └─WEB-INF
                  └─views
                          addForm.jsp
                          editForm.jsp
                          home.jsp
                          login.jsp
                          post.jsp

```
