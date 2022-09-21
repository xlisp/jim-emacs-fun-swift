//
//  ContentView.swift
//  MyTodo
//
//  Created by Clojure on 2022/9/14.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
        VStack(alignment: .leading, spacing: 5) {
            // 滚动的竖直的布局
            ScrollView(.vertical, showsIndicators: false, content: {
                
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350.0, alignment: .center)
                    .clipped()
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350.0, alignment: .center)
                    .clipped()
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350.0, alignment: .center)
                    .clipped()

            })
            // 底部的的按钮
            HStack(alignment: .center, spacing: 5){
                Button(action: addItem){
                    // OK
                    //Label("Add Item", systemImage: "plus")
                    //
                    VStack(){
                        Image(systemName: "arrow.2.squarepath")
                        Text("分享")
                    }
                    //
                }.padding(10)
                Button(action: addItem){
                    // OK
                    //Label("Add Item", systemImage: "plus")
                    //
                    VStack(){
                        Image(systemName: "arrow.2.squarepath")
                        Text("保存")
                    }
                    //
                }.padding(10)
                Button(action: addItem){
                    // OK
                    //Label("Add Item", systemImage: "plus")
                    //
                    VStack(){
                        Image(systemName: "arrow.2.squarepath")
                        Text("测试")
                    }
                    //
                }.padding(10)

                // . 属性内边距
            }.padding(10)
        }
        // 最后的点：导航
        .navigationBarTitle("笔记分享", displayMode: .inline)
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
