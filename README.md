# 商城系统（mall-system）

一个基于 **Spring Boot 3 + Vue 3** 的前后端分离商城系统，包含**前台商城**与**后台管理**两套界面，支持**管理员 / 普通用户 / 商家**三种角色。

前后端完全分离：后端提供 RESTful 接口并用 JWT 做无状态鉴权，前端使用 Vue 3 组合式 API 开发。

---

## 技术栈

### 后端

| 技术 | 版本 | 说明 |
| --- | --- | --- |
| Java | 17 | 开发语言 |
| Spring Boot | 3.2.10 | 应用框架 |
| MyBatis | 3.0.4 | ORM 框架（XML 映射） |
| MySQL | 8.0 | 数据库（驱动 mysql-connector-j 8.0.31） |
| JJWT | 0.9.1 | JWT 登录令牌生成与校验 |
| Hutool | 5.7.20 | 常用工具库 |
| Fastjson2 | 2.0.53 | JSON 序列化 |
| Spring AOP | - | 切面编程 |
| Lombok | - | 简化实体类代码 |
| Maven | 3.6+ | 项目构建与依赖管理 |

### 前端

| 技术 | 版本 | 说明 |
| --- | --- | --- |
| Vue | 3.4 | 前端框架（`<script setup>` 组合式 API） |
| Vite | 5.3 | 构建工具 / 开发服务器 |
| Element Plus | 2.8 | UI 组件库 |
| Vue Router | 4.4 | 前端路由 |
| Pinia | 2.2 | 状态管理 |
| Axios | 1.7 | HTTP 请求（统一封装拦截器） |
| ECharts | 5.5 | 后台数据统计图表 |
| wangEditor | 5.1 | 富文本编辑器 |
| crypto-js / sm-crypto | - | 加密工具 |

---

## 功能模块

### 前台（商城端）

- **用户体系**：注册、登录（JWT）、退出、修改资料、修改密码
- **首页**：轮播图、广告位、商品分类与推荐
- **商品**：商品列表（按分类 / 店铺筛选）、商品详情
- **购物车**：加入购物车、修改数量、删除、批量结算
- **订单**：下单、订单列表与状态查询、订单评价
- **个人中心**：收藏商品、收藏店铺、浏览历史、收货地址、余额信息

### 后台（管理端）

- **权限与用户**：管理员管理、普通用户管理、店铺管理
- **商品管理**：商品类型、商品信息、商品收藏、浏览历史
- **运营管理**：轮播图、广告位、收货地址、订单评价
- **订单管理**：订单列表、状态跟踪
- **数据统计**：基于 ECharts 的销售总额、商品类型占比等可视化报表

### 角色说明

系统通过登录时传入的 `type` 字段区分角色，共三种：

| 角色 | type 值 | 说明 |
| --- | --- | --- |
| 管理员 | `ADMIN` | 登录后台管理端 |
| 普通用户 | `USER` | 登录前台商城 |
| 商家 | `SHOP` | 店铺账号 |

---

## 项目结构

```
mall-system
├── sql/
│   └── sql.sql                  # 数据库建表与初始数据脚本
├── src/main/java/com/project/platform/
│   ├── ProjectManagement.java   # Spring Boot 启动类
│   ├── config/                  # 跨域、拦截器注册、时间格式等配置
│   ├── controller/              # 接口层（RESTful）
│   ├── service/                 # 业务接口 + impl 实现
│   ├── mapper/                  # MyBatis Mapper 接口
│   ├── entity/                  # 数据库实体
│   ├── dto/ vo/                 # 请求参数对象 / 响应对象
│   ├── exception/               # 自定义异常 + 全局异常处理
│   ├── interceptor/             # 登录拦截器（JWT 校验）
│   └── utils/                   # JWT、ThreadLocal、时间等工具类
├── src/main/resources/
│   ├── application.yaml         # 应用配置（端口、数据源等）
│   └── mapper/*.xml             # MyBatis SQL 映射文件
└── web/                         # 前端工程（Vue 3 + Vite）
    ├── src/
    │   ├── views/front/         # 前台页面
    │   ├── views/admin/         # 后台页面
    │   ├── components/          # 公共组件
    │   ├── router/              # 路由配置
    │   └── utils/http.js        # Axios 封装
    └── vite.config.js
```

---

## 快速开始

### 1. 环境要求

- JDK 17
- Maven 3.6+
- MySQL 8.0+
- Node.js 16+（推荐 18+）

### 2. 初始化数据库

新建数据库 `mall_system`（字符集 `utf8mb4`），然后导入项目自带的脚本：

```bash
mysql -u root -p mall_system < sql/sql.sql
```

也可以直接用 Navicat / MySQL Workbench 导入 `sql/sql.sql`。

### 3. 修改后端配置

编辑 [application.yaml](src/main/resources/application.yaml)，改成你本地的数据库账号密码：

```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/mall_system?useUnicode=true&useSSL=false&characterEncoding=utf8&serverTimezone=Asia/Shanghai
    username: root
    password: 你的密码
```

### 4. 启动后端

```bash
mvn spring-boot:run
```

启动成功后，后端服务运行在 **http://localhost:1000**。

### 5. 启动前端

```bash
cd web
npm install
npm run dev
```

前端开发服务器默认运行在 **http://localhost:5173**。

### 6. 访问系统

| 入口 | 地址 |
| --- | --- |
| 前台商城 | http://localhost:5173/ |
| 后台管理 | http://localhost:5173/admin |

### 内置测试账号

| 角色 | 用户名 | 密码 |
| --- | --- | --- |
| 管理员 | `admin` | `123456` |
| 普通用户 | `user1` | `123456` |
| 商家 | `shop1` | `123456` |

---

## 关键实现说明

### 统一响应格式

所有接口统一返回 `ResponseVO`：

```json
{
  "code": 200,
  "msg": "操作成功",
  "data": {}
}
```

### JWT 登录鉴权

1. 登录成功后后端用 `JwtUtils` 生成 token 并返回；
2. 前端把 token 存入 `localStorage`，之后每次请求由 Axios 请求拦截器自动加到请求头 `token` 上；
3. 后端 `LoginInterceptor` 拦截 `/**`（放行登录、注册、文件访问接口），校验 token 有效性；
4. 校验通过后把当前用户信息放入 `CurrentUserThreadLocal`（ThreadLocal），便于业务层随时获取当前登录人，请求结束后自动清理；
5. token 无效或过期统一返回 `401`，前端拦截器收到 `401` 后清除本地 token 并跳转登录页。

### 全局异常处理

通过 `@RestControllerAdvice` + 自定义 `CustomException` 统一捕获业务异常并转换为标准响应，避免异常堆栈直接暴露给前端。

### 文件上传

`FilesController` 提供文件上传与访问接口，上传的文件按 UUID 重命名后保存到本地 `uploads/` 目录，访问地址为 `http://localhost:1000/file/{fileName}`。

---

## 项目截图

<!-- 建议在此处补充截图，例如：
![首页](docs/images/home.png)
![商品详情](docs/images/product-detail.png)
![后台管理](docs/images/admin.png)
-->
> 暂未添加截图，可按上面的注释格式补充到 `docs/images/` 目录后在 README 中引用。

---

## 说明

本项目为个人学习与实践项目，用于熟悉前后端分离架构下的完整业务开发流程。
