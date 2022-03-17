# Lua

[Lua](http://www.lua.org/start.html#what) 是一种轻量小巧的脚本语言, 使用 **标准 C 语言**编写并以开放源代码形式发布。

Lua 设计的目的是为了嵌入应用程序中, 从而为应用程序提供灵活的扩展和定制功能。

## 环境安装

```bash
$ curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
$ tar zxf lua-5.4.4.tar.gz
$ cd lua-5.4.4
$ make all test
$ make install
```

### 查看版本

```bash
$ lua -v
Lua 5.4.4  Copyright (C) 1994-2022 Lua.org, PUC-Rio
```

## 基本语法

### 交互式编程

```bash
$ lua -i
Lua 5.4.4  Copyright (C) 1994-2022 Lua.org, PUC-Rio
> print("Hello, World!")
Hello, World!
```

### 脚本式编程

`main.lua`

```lua
print("Hello World！")
```

```bash
$ lua main.lua
Hello
```

`main.lua`

```diff
+#!/usr/local/bin/lua
print("Hello World！")
```

```bash
$ chmod +x main.lua
$ ./main.lua
Hello World！
```

### 注释

#### 单行注释

```lua
--单行注释
```

#### 多行注释

```lua
--[[
多行注释
]]--
```
