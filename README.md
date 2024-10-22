# duck2api
>  高版本使用镜像网站 https://p.till.us.kg/till/https/duckduckgo.com/?q=DuckDuckGo+AI+Chat&ia=chat&duckai=1 进行访问
>

# Web端 

访问http://你的服务器ip:8888/web

本地访问: http://127.0.0.1:8888/web
![web使用](https://raw.githubusercontent.com/hhhaiai/Picture/main/img/202410221640721.png)

## Deploy


### Render部署
[![Deploy](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

### 编译部署

```bash
git clone https://github.com/openChatGpts/Duck2api.git
cd Duck2api
go build -o duck2api
chmod +x ./duck2api
./duck2api
```

### Docker部署
暂时支持

## Usage

``` bash
# 其他地址版本
curl --location 'http://你的服务器ip:8888/v1/chat/completions' \
--header 'Content-Type: application/json' \
--data '{
     "model": "gpt-4o-mini",
     "messages": [{"role": "user", "content": "Say this is a test!"}],
     "stream": true
   }'
# 本地版本
curl --location 'http://127.0.0.1:8080/v1/chat/completions' \
--header 'Content-Type: application/json' \
--data '{
     "model": "gpt-4o-mini",
     "messages": [{"role": "user", "content": "Say this is a test!"}],
     "stream": true
   }'
```

## 支持的模型

- ~~gpt-3.5-turbo~~  duckduckGO官方已移除3.5模型的支持  
- claude-3-haiku
- llama-3.1-70b
- mixtral-8x7b
- gpt-4o-mini
## 高级设置

默认情况不需要设置，除非你有需求

### 环境变量
```
Authorization=your_authorization  用户认证 key。
TLS_CERT=path_to_your_tls_cert 存储TLS（传输层安全协议）证书的路径。
TLS_KEY=path_to_your_tls_key 存储TLS（传输层安全协议）证书的路径。
PROXY_URL=your_proxy_url 添加代理池来。
```

## 鸣谢

感谢各位大佬的pr支持，感谢。

## 参考项目


https://github.com/xqdoo00o/ChatGPT-to-API

## License

MIT License
