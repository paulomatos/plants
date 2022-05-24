//
//  ContentView.swift
//  minilist
//
//  Created by Paulo Matos on 09/04/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		
		
		ScrollView(.vertical, showsIndicators: false) {
			VStack(spacing: 0) {
				
				top()
				menu()
				
				Divider()
					.frame(width: 300)
					.foregroundColor(.primary)
				
				plants()
				obs()
				
			}
			
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

struct top: View {
	var body: some View {
		HStack {
			Image(systemName: "lineweight")
				.font(.system(size: 25))
			
			Spacer()
			
			Image(systemName: "magnifyingglass")
				.font(.system(size: 25))
		}
		.padding()
		.padding(.bottom, 30)
		
		HStack {
			Text("Jardim")
				.font(.system(.largeTitle, design: .rounded))
				.fontWeight(.semibold)
			
			VStack {
				Image(systemName: "plus.circle.fill")
					.font(.system(size: 40))
					.frame(maxWidth: .infinity, alignment: .trailing)
			}
		}
		.frame(width: .infinity, alignment: .leading)
		.padding()
	}
}

struct plants: View {
	var body: some View {
		
		VStack {
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 10) {
					VStack {
						Image("plan3")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.cornerRadius(30)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 1 - \(Image(systemName: "star.fill"))")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.primary)
					}
					
					
					VStack {
						Image("plan4")
							.resizable()
							.cornerRadius(30)
							.aspectRatio(contentMode: .fit)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 2")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.secondary)
					}
					VStack {
						Image("plan6")
							.resizable()
							.cornerRadius(30)
							.aspectRatio(contentMode: .fit)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 3 - \(Image(systemName: "star.fill"))")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.secondary)
					}
					VStack {
						Image("plan5")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.cornerRadius(30)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 4")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.light)
							.foregroundColor(.secondary)
					}
					VStack {
						Image("plan7")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.cornerRadius(30)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 5")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.secondary)
					}
					VStack {
						Image("plan2")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.cornerRadius(30)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 6")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.secondary)
					}
					VStack {
						Image("plan1")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.cornerRadius(30)
							.frame(width: 150, height: 250)
						.shadow(radius: 2, x: 1, y: 2)
						Text("Planta 7")
							.font(.system(.footnote, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.secondary)
					}
				}
				
			}
			.padding()
		}
	}
		
}

struct menu: View {
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(spacing: 20) {
				Text("Favoritas")
					.font(.system(size: 18, weight: .bold, design: .rounded))
				
				Text("Rosas")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
				
				Text("Cravos")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
				
				Text("Orquídeas")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
				
				Text("Margaridas")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
				
				Text("Narciso")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
				
				Text("Gerbera")
					.font(.system(size: 18, weight: .bold, design: .rounded))
					.foregroundColor(.secondary)
			}
			.padding()
			
		}
	}
}

struct obs: View {
	var body: some View {
		VStack(spacing: 0) {
			Text("Características - Planta 1")
				.font(.system(.title2, design: .rounded))
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity)
				.multilineTextAlignment(.leading)
			VStack {
				Text("Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium.")
					.font(.system(size: 16, weight: .light, design: .rounded))
					.padding()
					.multilineTextAlignment(.leading)
			}
		}
		.padding(.vertical, 10)
	}
}
