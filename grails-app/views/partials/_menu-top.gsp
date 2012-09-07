<div class="container-fluid nopadding">
            <div class="row-fluid">
                <div class="span12">
                    <div id="header">
                        <a href="#">
							<img src="${resource(dir: 'img', file: 'logo.png')}"" alt="" />
						</a>
						<div class="hright">
							
							<div id="userinfo" class="column">
								<a class="userinfo dropown-toggle" data-toggle="dropdown" href="#userinfo">
									<img alt="" src="${resource(dir: 'img', file: 'avatar.jpg')}"" />
								<span><strong><sec:ifLoggedIn>
									Olá <sec:username/>
									</sec:ifLoggedIn></strong></span>
								</a>
                                    <ul class="dropdown-menu">
										<li><a href="#">Editar Perfil</a></li>
										<li><a href="#">Edit Preferences</a></li>
										<li><a href="#">Private Messages</a></li>
										<li class="divider"></li>
										<li><a href="j_spring_security_logout">Sair</a></li>
									</ul>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>