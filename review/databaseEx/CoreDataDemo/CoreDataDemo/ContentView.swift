//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by 김수비 on 11/27/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var name: String = "" // 제품 이름
    @State var  quantity: String = "" // 제품 수량
    @Environment(\.managedObjectContext) private var viewContext
    
    // 오름차순 정렬
    @FetchRequest(entity: Product.entity(), sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)])
    
    private var products: FetchedResults<Product>
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Product name", text: $name)
                TextField("Product quantity", text: $quantity)
                
                HStack {
                    Spacer()
                    Button("Add") {
                        addProduct()
                    }
                    Spacer()
                    NavigationLink(destination: ResultsView(name: name, viewContext: viewContext)){
                        Text("Find")
                    }
                    Spacer()
                    // 입력한 내용을 지우는 기능
                    Button("Clear") {
                        name = ""
                        quantity = ""
                    }
                    Spacer()
                } // HStack
                .padding()
                .frame(maxWidth: .infinity)
                
                // 리스트
                List {
                    ForEach(products) { product in
                        HStack {
                            Text(product.name ?? "Not found")
                            Spacer()
                            Text(product.quantity ?? "Not found")
                        }
                    }.onDelete(perform: deleteProducts)
                } // List
                .navigationTitle("Product Database")
            } // VStack
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
    
    private func addProduct() {
        // 업데이트를 시각적으로 매력적이게 보일 수 있게 withAnimation 호출에 배치
        withAnimation {
            // 새로운 product 앤티티 인스턴스를 생성
            let product = Product(context: viewContext)
            
            // 제품 이름과 수량 상태 프로퍼티의 현재 콘텐트를 해당 엔티티 속성에 할당
            product.name = name
            product.quantity = quantity
            
            saveContext()
        }
    }
    
    // 삭제를 위해 사용자가 선택한 항목의 위치를 나타내는 list 항목의 오프셋 세트가 전달됨
    private func deleteProducts(offsets: IndexSet){
        withAnimation {
            // 항목을 삭제하기 위해 viewContext의 delete() 함수를 호출하도록 항목을 반복
            offsets.map { products[$0]}.forEach(viewContext.delete)
            // 변경사항을 데이터 베이스에 저장
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            // 현재 viewContext를 영구 저장소에 저장
            try viewContext.save()
        } catch {
            // 오류가 발생하면 앱이 종료됨
            let error = error as NSError
            fatalError("An error occurred: \(error)")
        }
    }
}


// find 한 내용을 띄움
struct ResultsView: View {
    var name: String
    var viewContext: NSManagedObjectContext
    
    @State var matches: [Product]?
    
    var body: some View {
        return VStack {
            List {
                ForEach(matches ?? [], id: \.self) { match in
                    HStack {
                        Text(match.name ?? "Not Found")
                        Spacer()
                        Text(match.quantity ?? "Not Found")
                    }
                }
            }
            .navigationTitle("Results")
        }
        .task {
            let fetchRequest: NSFetchRequest<Product> = Product.fetchRequest()
            fetchRequest.entity = Product.entity()
            fetchRequest.predicate = NSPredicate(format: "name CONTAINS %@", name)
            matches = try? viewContext.fetch(fetchRequest)
        }
    }
}

#Preview {
    ContentView()
}
