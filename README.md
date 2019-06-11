# 码序企业信息化系统

码序网站系统基础代码。

## 安装前端资源

```
rake yarn:install
```

## 启动PostgreSql

```bash
docker run --name postgres -e POSTGRES_PASSWORD=root -p 54321:5432 -d postgres
```

## 连接PostgreSql

```bash
psql -U postgres -b 127.0.0.1 -p 54321
```