import SwiftUI

struct FileItem: Identifiable {
    let id = UUID()
    let name: String
    var children: [FileItem]?
}

struct ContentView: View {
    let data = [
        FileItem(name: "文档", children: [
            FileItem(name: "笔记.md"),
            FileItem(name: "报告.docx")
        ]),
        FileItem(name: "图片", children: [
            FileItem(name: "照片.png"),
            FileItem(name: "截图.jpg")
        ]),
        FileItem(name: "代码", children: [
            FileItem(name: "main.swift"),
            FileItem(name: "App.swift")
        ])
    ]

    var body: some View {
        List {
            OutlineGroup(data, id: \.id, children: \.children) { item in
                Text(item.name)
            }
        }
        .padding()
    }
}