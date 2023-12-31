/// Copyright (c) 2023 Kodeco LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

//implementing neumorphism

//Skeuomorphism is a design concept in UI/UX where design elements mimic their real-world counterparts. Its purpose is to make digital interfaces intuitive by using familiar visuals and metaphors, like a recycle bin icon for deleting files or a notebook design for note-taking apps. This approach was prevalent in early 2000s digital designs, offering users a sense of familiarity and ease of understanding. However, it has largely been replaced by flatter and more minimalist design styles in recent years known as 'flat design'

//Flat Design, a reaction to skeumorphism is characterised by its simplicity, use of bold colours, minimalistic approach, and avoidance of stylistic elements that give the illusion of three dimensions. It focuses on a clean, two-dimensional aesthetic, eschewing the realistic textures and shadows found in skeuomorphic design. This style emphasizes usability and clarity, removing unnecessary stylistic choices that don't contribute to function. Neumorphism arose in response to flat design's lack of depth and intuitiveness.

//Neumorphism (or New Morphism), a reaction to flat design, is a design trend in UI that blends background colors, shapes, gradients, and shadows to ensure graphic elements are distinguishable. It resembles digital embossing or debossing, creating a soft, extruded plastic look, reintroducing tactile sensation and depth which flat design discarded. This style focuses on minimalism and color palettes closely tied to the background, using subtle contrasts. It typically involves two light source directions, creating an effect where UI elements appear as if they're connected to the background. While visually distinct and modern, it can pose challenges for accessibility and clarity in user interface design. It seeks to merge minimalism of flat design with user engagement of skeumorphism.

import SwiftUI

extension View {
  func northWestShadow(
    radius: CGFloat = 16,
    offset: CGFloat = 6
  ) -> some View {
    return self
      .shadow(
        color: .highlight, radius: radius, x: -offset,
          y: -offset)
      .shadow(
        color: .shadow, radius: radius, x: offset, y: offset)
  }

  func southEastShadow(
    radius: CGFloat = 16,
    offset: CGFloat = 6
  ) -> some View {
    return self
      .shadow(
        color: .shadow, radius: radius, x: -offset, y: -offset)
      .shadow(
        color: .highlight, radius: radius, x: offset, y: offset)
  }
}
