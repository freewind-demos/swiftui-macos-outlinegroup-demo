# SwiftUI macOS OutlineGroup

## 简介

演示 SwiftUI 中 OutlineGroup（树形大纲）的用法。

## 快速开始

```bash
cd swiftui-macos-outlinegroup-demo
xcodegen generate
open SwiftUIOutlineGroupDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### OutlineGroup

```swift
OutlineGroup(data, id: \.id, children: \.children) { item in
    Text(item.name)
}
```

## 完整讲解（中文）

### OutlineGroup 用途

- 显示树形层级结构
- 类似 Finder 侧边栏的文件树
- 支持展开/折叠