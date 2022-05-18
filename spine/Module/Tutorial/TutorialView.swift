//
//  TutorialView.swift
//  spine


import SwiftUI

struct TutorialView: View {
    
    @State var index = 0
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                //            Rectangle().fill().foregroundColor(K.appColors.appTheme)
                PageView(index: $index) {
                    PageView.Page { AnyView(
                        ZStack {
                            VStack {
                                Spacer()
                                SpineTextView().padding(.bottom, 150)
                                Text("The Spiritual Network")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 150)
//                                NavigationLink(destination: OTPVC()) {
//                                    Text("LOGIN")
//                                        .frame(width: 250, height: 45, alignment: .center)
//                                        .foregroundColor(K.appColors.appTheme)
//                                        .background(Color.white)
//                                        .cornerRadius(
//                                            30).padding(.bottom, 100)
//                                        .navigationTitle("")
//                                        .navigationBarTitleDisplayMode(.inline)
//                                    
//                                }
                                
                            }
                        }
                    )}
                    PageView.Page { AnyView(
                        ZStack {
                            VStack(alignment: .center, spacing: 20) {
                                Text("DEINE DIGITALE HEIMAT")
                                    .foregroundColor(.white).padding()
                                Text("Hier, sind wir untereinander.\neine Gemeinschaft, die dich dafür liebt,\ndass Du Deine Individualität lebst.\n\neine Gemeinschaft, die verstanden hat, dass Entfaltung nur im Vertrauen geschieht.\n\nEine Gemeinschaft, die einander hilft.")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                Text("The Spiritual Network").padding()
                                    .foregroundColor(.white)
                                Text("Hier sind unsere Regein für ein \nrespektvolles Miteinander").padding()
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    )}
                    PageView.Page { AnyView(
                        ZStack {
                            VStack(alignment: .center, spacing: 20) {
                                Text("HASS HAT HAUSARREST")
                                    .foregroundColor(.white).padding()
                                Text("Hift uns gemeinsam, eine starke \nGemeinschaftaufzubauen.\n\nSei freundlich, höflich undhilfbereit.\n\nLass uns alle einander mit Respekt behandeln.\n\nRespektlose Kommentare werden sofort\ngelöscht und wir bittendich, jeglichen Verstoß\nsofort zu melden, umandere zu schützen")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    )}
                    PageView.Page { AnyView(
                        ZStack {
                            VStack(alignment: .center, spacing: 20) {
                                Text("HASS HAT HAUSARREST")
                                    .foregroundColor(.white).padding()
                                Text("Hift uns gemeinsam, eine starke \nGemeinschaftaufzubauen.\n\nSei freundlich, höflich undhilfbereit.\n\nLass uns alle einander mit Respekt behandeln.\n\nRespektlose Kommentare werden sofort\ngelöscht und wir bittendich, jeglichen Verstoß\nsofort zu melden, umandere zu schützen")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    )}
                    PageView.Page { AnyView(
                        ZStack {
                            VStack(alignment: .center, spacing: 20) {
                                Text("HASS HAT HAUSARREST")
                                    .foregroundColor(.white).padding()
                                Text("Hift uns gemeinsam, eine starke \nGemeinschaftaufzubauen.\n\nSei freundlich, höflich undhilfbereit.\n\nLass uns alle einander mit Respekt behandeln.\n\nRespektlose Kommentare werden sofort\ngelöscht und wir bittendich, jeglichen Verstoß\nsofort zu melden, umandere zu schützen")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    )}
                    PageView.Page { AnyView(
                        ZStack {
                            VStack {
                                Spacer()
                                SpineTextView().padding(.bottom, 40)
                                
                                NavigationLink(destination: RegisterVC()) {
                                    Text("REGISER")
                                        .frame(width: 250, height: 45, alignment: .center)
                                        .foregroundColor(K.appColors.appTheme)
                                        .background(Color.white)
                                        .cornerRadius(
                                            30).padding(.bottom, 10)
                                        .navigationTitle("")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                                
                                NavigationLink(destination: LoginVC()) {
                                    Text("LOGIN")
                                        .frame(width: 250, height: 45, alignment: .center)
                                        .foregroundColor(K.appColors.appTheme)
                                        .background(Color.white)
                                        .cornerRadius(
                                            30).padding(.bottom, 100)
                                        .navigationTitle("")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                            }
                        }.background(Image("ic_spine_logo").padding(.bottom, 80))
                    )}
                }
                HStack(spacing: 0) {
                    ForEach(0..<6) { index in
                        BottomIndicatorView { self.index = index }
                        .foregroundColor(.white)
                        .modifier(IndicatorModifier(index: index, currentIndex: self.$index))
                    }
                }.padding(.bottom, 60)
            }.ignoresSafeArea(.container, edges: [.bottom, .top])
                .background(
                    Image("ic_launchBG")
                        .resizable()
                        .scaleEffect()
                        .edgesIgnoringSafeArea(.all)
                )
            //            VStack {
            //                Text("Hello World")
            //                NavigationLink(destination: LoginVC()) {
            //                    Text("Do Something")
            //                }
            //            }
        }        
    }
    func buttonLoginAction(){
        //do write here your button action logic
        print("buttonLoginAction")
        AppUtility.shared.redirectToLoginScreen()
        
    }
    func buttonRegisterAction(){
        //do write here your button action logic
        print("buttonRegisterAction")
          
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}

struct SpineTextView: View {
    var body: some View {
        HStack {
            Text("S").padding(.trailing, 12).font(.title)
            Text("P").padding(.trailing, 12).font(.title)
            Text("I").padding(.trailing, 12).font(.title)
            Text("N").padding(.trailing, 12).font(.title)
            Text("E").padding(.trailing, 12).font(.title)
        }.foregroundColor(.white)
    }
}

struct BottomIndicatorView: View {
    var action: () -> Void
    var body: some View {
        Button(action: { withAnimation { self.action() } }) {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 24, height: 24)
                Circle().fill().frame(width: 8, height: 12)
            }
        }
    }
}

struct IndicatorModifier: ViewModifier {
    let index: Int
    @Binding var currentIndex: Int
    
    func body(content: Content) -> some View {
        content.opacity(index == currentIndex ? 1.0 : 0.5)
    }
}


