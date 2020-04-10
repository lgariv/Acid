#import "Tweak.h"

NSArray<NCNotificationListCellActionButton*> *buttonsArray;
BOOL darkModeEnabled;
BOOL isBedtimeActive = NO;

static float ALPHA = 0.8f;
static UIColor *lightColor = [UIColor colorWithRed:255/255
											 green:255/255
										      blue:255/255 
											 alpha:ALPHA];
static UIColor *darkColor = [UIColor colorWithRed:0.141
											 green:0.141
										      blue:0.149 
											 alpha:ALPHA];

UIColor *shouldUseColor;

%hook NCNotificationShortLookViewController
-(void)viewDidLoad {
	%orig;
	if (isBedtimeActive) {
		[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
		//[self.viewForPreview.subviews[0].superview.superview.superview.superview.subviews[check] setBackgroundColor:darkColor];
		/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
			if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}*/
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}*/
		} else {
			[self.viewForPreview.subviews[0] setBackgroundColor:lightColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}*/
		}
	}
}

-(void)viewWillLayoutSubviews {
	%orig;
	if (isBedtimeActive) {
		[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
		/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
			if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}*/
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}*/
		} else {
			[self.viewForPreview.subviews[0] setBackgroundColor:lightColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}*/
		}
	}

	[[NSNotificationCenter defaultCenter] addObserver:self 
											 selector:@selector(didChangeAppearance:) 
												 name:@"UIAppearanceDidChange"
							  				   object:nil];
}

%new
-(void)didChangeAppearance:(NSNotification *)notification {
	if (isBedtimeActive) {
		[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
		/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
			if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}*/
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			[self.viewForPreview.subviews[0] setBackgroundColor:darkColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}*/
		} else {
			[self.viewForPreview.subviews[0] setBackgroundColor:lightColor];
			/*for (int x=0; x<self.viewForPreview.subviews[0].subviews.count; x++) {
				if ([self.viewForPreview.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewForPreview.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewForPreview.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewForPreview.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}*/
		}
	}
}
%end

%hook NCNotificationStructuredListViewController
-(void)viewDidLoad {
	%orig;
	if (isBedtimeActive) {
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
						NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
						for (int check=0; check<groupToggleControls.count; check++) {
							if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
								NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
								for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
									if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
										for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
											toggleControl.subviews[0].backgroundColor = darkColor;
										}
									}
								}
							}
						}
					}
				}		
			}
		}
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = darkColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		} else {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = lightColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		}
	}

	[[NSNotificationCenter defaultCenter] addObserver:self 
											selector:@selector(didChangeAppearance:) 
												name:@"UIAppearanceDidChange"
											  object:nil];
}

-(void)viewWillLayoutSubviews {
	//%orig;
	if (isBedtimeActive) {
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
						NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
						for (int check=0; check<groupToggleControls.count; check++) {
							if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
								NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
								for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
									if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
										for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
											toggleControl.subviews[0].backgroundColor = darkColor;
										}
									}
								}
							}
						}
					}
				}		
			}
		}
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = darkColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		} else {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = lightColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		}
	}
}

%new
-(void)didChangeAppearance:(NSNotification *)notification {
	if (isBedtimeActive) {
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
						for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
							if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
								self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
							}
						}
					}
				}
			}
		}
		for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
			if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
				for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
					if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
						NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
						for (int check=0; check<groupToggleControls.count; check++) {
							if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
								NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
								for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
									if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
										for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
											toggleControl.subviews[0].backgroundColor = darkColor;
										}
									}
								}
							}
						}
					}
				}		
			}
		}
	} else {
		darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
		if (darkModeEnabled) {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = darkColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = darkColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		} else {
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListSectionHeaderView) class]]) {
							for (int z=0; z<self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews.count; z++) {
								if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z] isMemberOfClass:[%c(NCToggleControl) class]]){
									self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews[z].subviews[0].backgroundColor = lightColor;
								}
							}
						}
					}
				}
			}
			for (int x=0; x<self.viewIfLoaded.subviews[0].subviews.count; x++) {
				if ([self.viewIfLoaded.subviews[0].subviews[x] isMemberOfClass:[%c(NCNotificationListView) class]]) {
					for (int y=0; y<self.viewIfLoaded.subviews[0].subviews[x].subviews.count; y++) {
						if ([self.viewIfLoaded.subviews[0].subviews[x].subviews[y] isMemberOfClass:[%c(NCNotificationListView) class]]) {
							NSArray *groupToggleControls = self.viewIfLoaded.subviews[0].subviews[x].subviews[y].subviews;
							for (int check=0; check<groupToggleControls.count; check++) {
								if ([groupToggleControls[check] isMemberOfClass:[%c(NCNotificationListCoalescingHeaderCell) class]]) {
									NCNotificationListCoalescingHeaderCell *groupToggleControlsHeader = groupToggleControls[check];
									for (int z=0; z<groupToggleControlsHeader.subviews.count; z++) {
										if ([groupToggleControlsHeader.subviews[z] isMemberOfClass:[%c(NCNotificationListCoalescingControlsView) class]]) {
											for (NCToggleControl *toggleControl in groupToggleControlsHeader.subviews[z].subviews[0].subviews) {
												toggleControl.subviews[0].backgroundColor = lightColor;
											}
										}
									}
								}
							}
						}
					}		
				}
			}
		}
	}
}
%end

%hook NCToggleControl
-(void)layoutSubviews {
	%orig;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"UIAppearanceDidChange" 
														object:nil];
}
%end



%hook NCNotificationListCellActionButtonsView
-(void)layoutSubviews {
    %orig;
	if (self.buttonsStackView.arrangedSubviews) {
		// Get the options StackView array
		buttonsArray = self.buttonsStackView.arrangedSubviews;
	} else return;

	if (buttonsArray.count != 0) {
		if (isBedtimeActive) {
			if (buttonsArray.count>1) for (int i=0; i<buttonsArray.count; i++) {
				buttonsArray[i].subviews[0].backgroundColor = darkColor;
			} else
				buttonsArray[0].subviews[0].backgroundColor = darkColor;
		} else {
			darkModeEnabled = ([[%c(UIUserInterfaceStyleArbiter) sharedInstance] currentStyle] == 2) ? true : false;
			if (darkModeEnabled) {
				if (buttonsArray.count>1) for (int i=0; i<buttonsArray.count; i++) {
					buttonsArray[i].subviews[0].backgroundColor = darkColor;
				} else
					buttonsArray[0].subviews[0].backgroundColor = darkColor;
			} else {
				if (buttonsArray.count>1) for (int i=0; i<buttonsArray.count; i++) {
					buttonsArray[i].subviews[0].backgroundColor = lightColor;
				} else
					buttonsArray[0].subviews[0].backgroundColor = lightColor;
			}
		}
	}
	[[NSNotificationCenter defaultCenter] postNotificationName:@"UIAppearanceDidChange" 
														object:nil];
}
%end

%hook CSDNDBedtimeController
-(BOOL)isActive {
	isBedtimeActive = %orig;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"UIAppearanceDidChange" 
														object:nil];
	return %orig;
}
%end

%hook UIUserInterfaceStyleArbiter
-(void)userInterfaceStyleModeDidChange:(id)arg1 {
	%orig;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"UIAppearanceDidChange" 
														object:nil];
}
%end
