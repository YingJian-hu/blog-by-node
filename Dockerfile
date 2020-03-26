# 基础镜像为node，版本为v8.11.3
FROM node:8.11.3

# 镜像作者，可以附加联系信息
MAINTAINER huyingjian

COPY . /home/data-nodejs

WORKDIR /home/data-nodejs

RUN yarn install

# 容器对外暴露的端口号，要和node项目配置的端口号一致
EXPOSE 3001

CMD [ "node", "app.js" ]