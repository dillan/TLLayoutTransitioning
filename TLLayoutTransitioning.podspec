Pod::Spec.new do |s|
  s.name         = "TLLayoutTransitioning"
  s.version      = "1.0.7"
  s.summary      = "Enhanced transitioning between UICollectionView layouts in iOS."
  s.description  = <<-DESC
                    TLLayoutTransitioning provides a `TLLayoutTransition` transition layout subclass and a `UICollectionView+TLTransitioning` category that combine to solve a few problems with collection view layout transitioning:

                    1. `UICollectionViewLayoutTransition` does not handle content offset well, often leaving cells where you don't want them. `TLTransitionLayout` provides elegant control of content offset with Minimal, Visible, Center, Top, Left, Bottom or Right placement options relative to one or more index paths.

                    2. `UICollectionViewLayoutTransition` does not support supplementary views. `TLTransitionLayout` provides support for any supplementary view kinds specified in the initializer.

                    3. `-[UICollectionView setCollectionViewLayout:animated:completion]` has [serious known bugs][3] in iOS7 and does not provide any animation options. TLLayoutTransitioning provides a robust alternative to this API with support for animation duration, 30+ easing curves and content offset control. This is done by using `CADisplayLink` to drive an interactive `TLTransitionLayout` as a non-interactive animation.

                    Check out the demos in the Examples workspace!
                    
                    Changes in 1.0.7
                    * Fix clang analyzer warning
                    DESC
  s.homepage     = "https://github.com/wtmoose/TLLayoutTransitioning"                    
  s.license      = { :type => "MIT" }
  s.author       = { "wtmoose" => "wtm@tractablelabs.com" }
  s.source       = { :git => "https://github.com/wtmoose/TLLayoutTransitioning.git", :tag => '1.0.7' }
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source_files = 'TLLayoutTransitioning/**/*.{h,m,c}'
  s.dependency 'AHEasing'
  s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'
  s.requires_arc = true
end
