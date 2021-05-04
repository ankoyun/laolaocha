<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">唠唠茶</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="Index">主页 <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Home">个人中心</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${username == null?"未登录":username }
                  </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="Logout">切换账户</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Logout">注销</a>
                  </div>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0" method="post" action="UserQuery">
                <input class="form-control mr-sm-2" type="search" placeholder="请输入关键字" aria-label="Search" name="key">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">用户查询</button>
              </form>
            </div>
          </nav>
          </div>