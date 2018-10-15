# 创建项目

## 创建 react app

### 脚本

基于“眼见为实”的原则，此处需要截图，更易于理解。

创建 TypeScript 版的 React 项目

```
安装创建项目的工具
使用工具创建项目
启动并访问项目
添加依赖
引入 redux
引入 react-router
引入 antd
支持自定义配置
添加按需加载功能
项目结构
```
要在评论中添加完整的安装步骤

1. 集成 redux
1. 支持异步 action
1. 集成 react-router
1. 引入 antd


视频脚本

```
创建 TypeScript 版 React 项目
基础篇
一、安装创建项目工具
二、创建项目
三、安装依赖的模块，
包括
状态管理组件
路由组件
UI组件
```

安装脚本

```bash

# 安装创建项目工具

npm install -g create-react-app
npm install -g yarn

# 创建 TypeScript 版 React 项目

create-react-app client --scripts-version=react-scripts-ts

# 0 安装默认的依赖
yarn

# 安装依赖的模块

# 1、状态管理组件 
#    redux
yarn add redux
yarn add react-redux
yarn add @types/react-redux
#    redux 中间件
yarn add redux-thunk
yarn add redux-logger
yarn add @types/redux-logger
#    fetch api
yarn add cross-fetch

# 安装依赖的模块

# 2、路由组件
#    react-router
yarn add react-router-dom

# 安装依赖的模块

# 3、UI组件
#    ant design
yarn add antd
```

```
创建 TypeScript 版 React 项目
进阶篇
一、支持扩展 react 项目的 webpack 配置
1、安装组件
2、启动配置
# 调整 package.json 中的启动配置
# 代码详见 ant design 官网
3、创建用于覆盖默认配置的文件
# 在根目录创建 `config-overrides.js`，用于修改默认配置

# 在片子中直接列出 ant design 的网址（不要直接贴代码）

# 安装按需加载 ant 组件代码和样式的 TypeScript 插件

# 粘贴配置代码

# 安装 React 组件测试工具

# 创建 src/setupTests.ts

# 启动项目
yarn start
# 自动启动浏览器并访问 http://localhost:3000
```

```
创建 TypeScript 版 React 项目
进阶篇
一、支持扩展 webpack 配置
包括
安装组件
调整启动配置
创建配置文件
二、安装和配置按需加载 antd 组件的插件
三、安装 UI 组件测试工具
包括
安装组件
创建启动类
四、开发阶段的三个常用命令
1. 运行项目
1. 运行测试用例
1. 构建生产环境
```

版本1
```
一、	支持扩展 webpack 配置
包括
安装组件
调整启动配置
创建配置文件
安装和配置按需加载 antd 组件的插件
二、安装 UI 组件测试工具
包括
安装组件
创建启动类
三、启动项目
```

简化版

```
创建 TypeScript 版 React 项目
进阶篇
一、支持扩展 webpack 配置
二、安装和配置按需加载 antd 组件的插件
三、安装 UI 组件测试工具
四、掌握开发阶段的三个常用命令
```


```
yarn add react-app-rewired --dev

yarn add ts-import-plugin --dev

yarn add enzyme --dev
yarn add @types/enzyme --dev
yarn add enzyme-adapter-react-16 --dev
yarn add @types/enzyme-adapter-react-16 --dev
yarn add react-test-renderer --dev
```

```bash
# 安装创建项目的工具
npm install -g create-react-app yarn

# 创建 TypeScript 版的 React 项目
create-react-app my-app --scripts-version=react-scripts-ts

# 安装 redux
npm install -S redux react-redux @types/react-redux
# 安装 redux 中间件
npm install -S redux-thunk
npm install -S redux-logger @types/redux-logger
# 安装 fetch
npm install -S cross-fetch

# 安装 react-router
npm install -S react-router-dom

# 引入 ant
npm install -S antd

# 支持扩展 react 项目的 webpack 配置
# 1、安装组件
npm install -D react-app-rewired
# 2、启动配置
# 调整 package.json 中的启动配置
# 代码详见 ant design 官网
# 3、创建用于覆盖默认配置的文件
# 在根目录创建 `config-overrides.js`，用于修改默认配置

# 在片子中直接列出 ant design 的网址（不要直接贴代码）

# 安装按需加载 ant 组件代码和样式的 TypeScript 插件
$ npm install -D ts-import-plugin

# 粘贴配置代码

# 安装测试工具
npm install -D enzyme @types/enzyme enzyme-adapter-react-16 @types/enzyme-adapter-react-16 react-test-renderer
# 创建 Jest 启动文件 src/setupTests.ts

创建完成后

# 运行测试用例

# 启动项目
yarn start
# 自动启动浏览器并访问 http://localhost:3000

# 打包项目
yarn build

```


要介绍三个常用命令
```
yarn start
yarn test
yarn build
```

画一张片子，说明 react redux 的关系


`src/setupTests.ts` 运行测试用例时会自动加载
```ts
import * as enzyme from 'enzyme';
import * as Adapter from 'enzyme-adapter-react-16';

enzyme.configure({ adapter: new Adapter() });
```


`config-overrides.js` 

```ts
/* config-overrides.js */
const tsImportPluginFactory = require('ts-import-plugin')
const { getLoader } = require("react-app-rewired");

module.exports = function override(config, env) {
  const tsLoader = getLoader(
    config.module.rules,
    rule =>
      rule.loader &&
      typeof rule.loader === 'string' &&
      rule.loader.includes('ts-loader')
  );

  tsLoader.options = {
    getCustomTransformers: () => ({
      before: [ tsImportPluginFactory({
        libraryDirectory: 'es',
        libraryName: 'antd',
        style: 'css',
      }) ]
    })
  };

  return config;
}
```

package.json

```diff
/* package.json */
"scripts": {
-   "start": "react-scripts-ts start",
+   "start": "react-app-rewired start --scripts-version react-scripts-ts",
-   "build": "react-scripts-ts build",
+   "build": "react-app-rewired build --scripts-version react-scripts-ts",
-   "test": "react-scripts-ts test --env=jsdom",
+   "test": "react-app-rewired test --env=jsdom --scripts-version react-scripts-ts",
}
```

项目结构

分上和下两个片子


## npm 常用命令

1. 安装命名
   
   ```sh
    # 全局安装
    npm install 模块名 -g
    # 本地安装（项目级）
    npm install 模块名
    # 一次安装多个模块
    npm install 模块1 模块2 模块3
    # 安装开发时依赖包
    npm install 模块名 --save-dev
    # 安装运行时依赖包
    npm install 模块名 --save
   ```
2. 查看安装的目录
   
   ```sh
    # 查看项目中模块所在的目录
    npm root
    # 查看全局安装的模块虽在目录
   ```
3. 查看版本信息
   
   ```sh
    # 查看模块的当前版本号
    npm view 模块名 version
   ```
4. 升级模块
   
   ```sh
    # 升级全局模块
    npm install -g 模块名
   ```

## 发音

1. node [nəʊd]
2. web [web]
3. pack [pæk]

## 资料

1. https://www.cnblogs.com/xiaohuochai/p/8491055.html
2. https://zhaozhiming.github.io/blog/2018/01/08/create-react-app-override-webpack-config/
3. [React系列---React+Redux工程目录结构划分](https://segmentfault.com/a/1190000010384268)
4. https://github.com/gothinkster/react-redux-realworld-example-app
5. https://github.com/reduxjs/redux/tree/master/examples
