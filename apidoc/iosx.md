# API
以下API后面都要加上`?isApi=1`

# 获取首页列表(/)(GET)

参数：
* page

返回值:

* List:列表
* Pagination:Pagination分页

例如:

```
https://www.iosx.me/?isApi=1
https://www.iosx.me/1/?isApi=1
https://www.iosx.me/2/?isApi=1
```

# 获取分类列表(/node/)(GET)

参数：

* node 节点
* page 页码

返回值:

* List:列表
* Pagination:Pagination分页

例如:

```
https://www.iosx.me/node/EasyIOS?isApi=1
https://www.iosx.me/node/EasyIOS/2?isApi=1
```

# 登陆(/api/login?isApi=1)(POST)

参数：

* username 用户名
* passwd 密码 这个密码不用加密

返回值:

* User

