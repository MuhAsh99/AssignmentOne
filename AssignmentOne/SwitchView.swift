

import SwiftUI
struct SwitchView: View {
@State private var isToggle : Bool = false
   var body: some View {
   VStack {
      Toggle(isOn: $isToggle){
         Text("Switch")
            .font(.title)
            .foregroundColor(Color.white)
      }
    }.padding()
     .background(isToggle ? Color.orange : Color.purple)
  }
}
struct SwitchView_Previews: PreviewProvider {
   static var previews: some View {
      SwitchView()
   }
}
