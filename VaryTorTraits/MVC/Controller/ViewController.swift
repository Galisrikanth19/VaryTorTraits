//
//  ViewController.swift
//  VaryTorTraits
//
//  Created by Gali Srikanth on 06/09/18.
//  Copyright © 2018 Gs19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override public var traitCollection: UITraitCollection {
        if UIDevice.current.userInterfaceIdiom == .pad {
            if self.view.frame.width < self.view.frame.height {
                return UITraitCollection(traitsFrom:[UITraitCollection(horizontalSizeClass: .compact), UITraitCollection(verticalSizeClass: .regular)])
            }
            else {
                return UITraitCollection(traitsFrom:[UITraitCollection(horizontalSizeClass: .regular), UITraitCollection(verticalSizeClass: .regular)])
            }
        }
        else {
            return super.traitCollection
        }
    }
    
}




/*
/////////////////////////////////////////////////////////////
////////////////////Pragma -mark Obj-C///////////////////////
/////////////////////////////////////////////////////////////
- (UITraitCollection *)traitCollection {
    if (Is_IPad) {
        if (self.view.bounds.size.width < self.view.bounds.size.height) {
            return [UITraitCollection traitCollectionWithTraitsFromCollections:
                @[[UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassCompact],
                [UITraitCollection traitCollectionWithVerticalSizeClass:UIUserInterfaceSizeClassRegular]]];
        } else {
            return [UITraitCollection traitCollectionWithTraitsFromCollections:
                @[[UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassRegular],
                [UITraitCollection traitCollectionWithVerticalSizeClass:UIUserInterfaceSizeClassRegular]]];
        }
    }
    else {
        return [UITraitCollection traitCollectionWithTraitsFromCollections:
            @[[UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassCompact],
            [UITraitCollection traitCollectionWithVerticalSizeClass:UIUserInterfaceSizeClassRegular]]];
    }
}
*/
