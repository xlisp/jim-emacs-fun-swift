# jim-emacs-fun-swift

## project use swift repl
```bash

➜  jim-emacs-fun-swift git:(master) swift run --repl


  2> import jim_emacs_fun_swift
  3>
  4> let j = jim_emacs_fun_swift()
j: jim_emacs_fun_swift.jim_emacs_fun_swift = {
  text = "Hello, World!"
}
  5> j.text
$R0: String = "Hello, World!"
  6>

```

## Swift UI 

./SwiftUI/MyTodo/ContentView.swift

```swift
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                    } label: {
                        Text(item.timestamp!, formatter: itemFormatter)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
```

