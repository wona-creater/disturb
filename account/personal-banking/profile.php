<?php include("header.php"); ?>
<div class="nk-content nk-content-fluid">
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="nk-block-head">
                                <div class="nk-block-head-content">
                                    <div class="nk-block-head-sub"><span>Account Setting</span></div>
                                    <h2 class="nk-block-title fw-normal">My Profile</h2>
                                    <div class="nk-block-des">
                                        <p>You have full control to manage your own account setting. <span class="text-primary"><em class="icon ni ni-info" data-toggle="tooltip" data-placement="right" title="Tooltip on right"></em></span></p>
                                    </div>
                                </div>
                            </div><!-- .nk-block-head -->
                            <ul class="nk-nav nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link" href="profile">Personal</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="account-setting">Security</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Notifications</a>
                                </li>
                            </ul><!-- .nk-menu -->
                            <!-- NK-Block @s -->
                            <div class="nk-block">
                                <div class="alert alert-warning">
                                    <div class="alert-cta flex-wrap flex-md-nowrap">
                                        <div class="alert-text">
                                            <p>When you're on public Wi-Fi, hackers can more easily access your computer and steal personal information from it. You should never access your online banking through a computer, tablet, or mobile phone unless you're on a secure Wi-Fi network with a password, or using your own cell phone data connection. This is much more difficult for thieves to hack, so it keeps your information safer.</p>
                                        </div>
                                    </div>
                                </div><!-- .alert -->
                                <div class="nk-block-head">
                                    <div class="nk-block-head-content">
                                        <h5 class="nk-block-title">Personal Information</h5>
                                        <div class="nk-block-des">
                                            <p>Basic info, like your name and address, that you using on <?php echo $sitename ?>.</p>
                                        </div>
                                    </div>
                                </div><!-- .nk-block-head -->
                                <div class="nk-data data-list">
                                    <div class="data-head">
                                        <h6 class="overline-title">Basics</h6>
                                    </div>
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit">
                                        <div class="data-col">
                                            <span class="data-label">Full Name</span>
                                            <span class="data-value"><?php echo $fullname ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit">
                                        <div class="data-col">
                                            <span class="data-label">Display Name</span>
                                            <span class="data-value"><?php echo $middlename ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item">
                                        <div class="data-col">
                                            <span class="data-label">Email</span>
                                            <span class="data-value"><?php echo $email ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more disable"><em class="icon ni ni-lock-alt"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit">
                                        <div class="data-col">
                                            <span class="data-label">Phone Number</span>
                                            <span class="data-value text-soft"><?php echo $phone ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit">
                                        <div class="data-col">
                                            <span class="data-label">Security Question</span>
                                            <span class="data-value"><?php echo $securityQuestion ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit">
                                        <div class="data-col">
                                            <span class="data-label">Security Answer</span>
                                            <span class="data-value"><?php echo $answer ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item" data-toggle="modal" data-target="#profile-edit" data-tab-target="#address">
                                        <div class="data-col">
                                            <span class="data-label">Address</span>
                                            <span class="data-value"><?php echo $address ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><span class="data-more"><em class="icon ni ni-forward-ios"></em></span></div>
                                    </div><!-- .data-item -->
                                </div><!-- .nk-data -->
                                <div class="nk-data data-list">
                                    <div class="data-head">
                                        <h6 class="overline-title">Preferences</h6>
                                    </div>
                                    <div class="data-item">
                                        <div class="data-col">
                                            <span class="data-label">Language</span>
                                            <span class="data-value">English (<?php echo $sitecountry ?>)</span>
                                        </div>
                                        <div class="data-col data-col-end"><a href="#" data-toggle="modal" data-target="#profile-language" class="link link-primary">Change Language</a></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item">
                                        <div class="data-col">
                                            <span class="data-label">Date Format</span>
                                            <span class="data-value">M d, YYYY</span>
                                        </div>
                                        <div class="data-col data-col-end"><a href="#" data-toggle="modal" data-target="#profile-language" class="link link-primary">Change</a></div>
                                    </div><!-- .data-item -->
                                    <div class="data-item">
                                        <div class="data-col">
                                            <span class="data-label">Current Timezone</span>
                                            <span class="data-value"><?php getTimezone(); ?></span>
                                        </div>
                                        <div class="data-col data-col-end"><a href="#" data-toggle="modal" data-target="#profile-language" class="link link-primary">Change</a></div>
                                    </div><!-- .data-item -->
                                </div><!-- .nk-data -->
                            </div>
                            <!-- NK-Block @e -->
                            <!-- //  Content End -->
                        </div>
                    </div>
                </div>
<?php include("footer.php"); ?>