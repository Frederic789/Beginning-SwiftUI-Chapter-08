import SwiftUI
// Chapter9 Modified 
@available(iOS 15.0, *) // For Slider's min & max labels

struct Exercise: View {
    @State var myToggle = true
    @State var sliderValue = 20.0
    @State private var backgroundColor = Color.orange
    @State private var imageSize = CGSize(width: 200, height: 300)

    var body: some View {
        
        VStack {
            
            ZStack {
                
                Rectangle()
                    .fill(backgroundColor)
                    .frame(width: 300, height: 250)
                Image("the mountain")
                    .resizable()
                    .frame(width: (sliderValue * 5), height: (sliderValue * 5))
            }
           
            //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            .onChange(of: sliderValue) { newValue in
                imageSize = CGSize(width: newValue * 8, height: newValue * 8)
                
            }
            
            VStack {
                Toggle("Toggle", isOn: $myToggle)
                    .padding()

                Stepper("Stepper", value: $sliderValue, in: 1...200)
                    .padding()

                Text("Adjust the size of the image with the slider")
                    .padding(.bottom)
                
                Slider(value: $sliderValue, in: 1...200, step: 1)
                    .padding()

                ColorPicker("Change Background Color", selection: $backgroundColor)
                    .padding()

                Slider(value: $sliderValue, in: 1...200, step: 1, minimumValueLabel: Text("1"), maximumValueLabel: Text("200")) {
                    Text("Image Size")
                }
           
            }
          
            .padding()
            
            Toggle("Flip Background Color", isOn: $myToggle)
                .padding()
                .onChange(of: myToggle) { newValue in
                    backgroundColor = newValue ? .orange : .green
                }
            Spacer()
        }
        .padding()
       
    }
  
}

@available(iOS 15.0, *)
struct ExercisePreviews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}

