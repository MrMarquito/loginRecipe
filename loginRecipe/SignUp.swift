import SwiftUI

struct SignUp: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var reEnterPasswd: String = ""
    
    var body: some View {
        VStack{
            Text("Create an account")
                .fontWeight(.black  )
                .font(.largeTitle)
                .padding(.bottom, 42)
            
            VStack(spacing: 16.0){
                InputFieldView(data: $username, title: "Username")
                InputFieldView(data: $password, title: "Password")
                InputFieldView(data: $reEnterPasswd, title: "Re-enter password")
            }.padding(.bottom, 16)
            
            Button {
                signUp()
            } label: {
                Text("Sign Up")
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
                NavigationLink(destination: ContentView()){
                    Text("Already a member? Login")
                        .fontWeight(.thin)
                        .underline()
                        .foregroundColor(Color.blue)
                }
            }.padding()
        }.padding()
    }
    
    func signUp(){
        if(!password.isEmpty && !reEnterPasswd.isEmpty && reEnterPasswd == password){
            print("Signed up")
        }
        else{
            print("Passwords don't match")
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
