
import SwiftUI

struct ContentView: View {
    
    @State var redSlider : Float = 0.0
    @State var greenSlider : Float = 0.0
    @State var blueSlider : Float = 0.0
    
    
    var body: some View {
        VStack {
            Text ("Red")
                .accentColor(Color.red)
                Slider(value: $redSlider, in: 0...1)
                .accentColor(Color.red)
            
            Text ("Green")
                .accentColor(Color.red)
            Slider(value: $greenSlider, in: 0...1)
                .accentColor(Color.green)
            
            Text ("Blue")
                .accentColor(Color.red)
                Slider(value: $blueSlider, in: 0...1)
                .accentColor(Color.blue)
            
            Text("Result")
            Color( red: Double(redSlider), green: Double(greenSlider), blue: Double(blueSlider))
                .frame(width: 100,height: 100)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
