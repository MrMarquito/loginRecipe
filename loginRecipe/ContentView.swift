import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var user = "Ggs"
    @State var pass = "Ggs"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.bottom, 42)
                
                VStack(spacing: 16.0){
                    InputFieldView(data: $username, title: "Username")
                    InputFieldView(data: $password, title: "Password")
                }.padding(.bottom, 16)
                
                Button {
                    loginUser()
                } label: {
                    Text("Sign In")
                        .fontWeight(.heavy)
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                }
                
                HStack{
                    Spacer()
                    Button {
                        //
                    } label: {
                        Text("Forgot password?")
                            .fontWeight(.thin)
                            .foregroundColor(Color.blue)
                            .underline()
                    }
                }.padding(.top, 16)
                
                VStack {
                    NavigationLink(destination: SignUp()) {
                        Text("Not a member? Sign Up")
                            .fontWeight(.thin)
                            .foregroundColor(.blue)
                            .underline()
                    }
                }.offset(x: 92, y: 10)
            }.padding()
        }
    }
    
    func loginUser() {
        if username == user{
            if password == pass{
                print("Logged in")
            }
            else{
                print("Password not correct")
            }
        }
        else{
            print("Username not found")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
