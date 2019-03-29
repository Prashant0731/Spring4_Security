<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>

<div class="jumbotron text-center">
  <h1>Millennium</h1> 
  <p>Arise and Shine</p> 
  <form>
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About Company Page</h2><br>
      <h4>Millennium Software Solutions is a leading information technology consulting and services provider, providing end-to-end solutions for diversified clients from varied industry. We have been a pioneer in adopting technology to ensure enhanced customer choice, convenience and gratification.</h4><br>
      <p>We believe in the simple principles of customer first. Our core values have helped us to continuously remain preferred partners to large organizations and some fortune 500 companies for years together. Our main vision is to make customers successful by being collaborators in engineering technology solutions. Put Passion and Commitment to Work.</p>
      <br><a  href="contactUs" class="btn btn-default btn-lg">Get in Touch</a>
            
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> We aim to provide cost effective web based back office solutions to various industries. Our solutions are reckoned the best in understanding the customer requirement. Developing new software creates profound corporate change that must be anticipated, managed and nurtured.</h4><br>
      <p><strong>VISION:</strong> We take Software projects as the challenge and opportunity to prove our caliber in streamlined and optimized process flow, Deliver excellent, creative and innovative services is not only our work it's our passion. We employ a large pool of software engineers coming from different backgrounds. We are able to balance product development efforts and project duration to your business software needs.</p>
    </div>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-off logo-small" data-toggle="tab" href="#Digital"></a>
      <h4>Digital-Marketing</h4>
      <p>-</p>
    </div>
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-heart logo-small" data-toggle="tab" href="#Web_Design"></a>
      <h4>Web Design</h4>
      <p>-</p>
    </div>
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-lock logo-small" data-toggle="tab" href="#Web_Development"></a>
      <h4>Web Development</h4>
      <p>-</p>
    </div>
  </div>
  
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-leaf logo-small" data-toggle="tab" href="#Android"></a>
      <h4>Android/iOS</h4>
      <p>-</p>
    </div>
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-certificate logo-small" data-toggle="tab" href="#E-Commerce"></a>
      <h4>E-Commerce</h4>
      <p>-</p>
    </div>
    <div class="col-sm-4">
      <a class="glyphicon glyphicon-wrench logo-small" data-toggle="tab" href="#Java_Application"></a>
      <h4>Java Application</h4>
      <p>-</p>
    </div>
  </div>
  
    <div class="tab-content clearfix">
        <div class="tab-pane" id="Digital">
            <h4>Digital-Marketing</h4>
            <h6>Our Strengths : Your Preferences </h6>
            <p>
                The foremost aim of the Internet marketing services at MILLENNIUM is to help the client in creating a global presence and generating
                successful recognition on the Internet worldwide. Having a website is not enough
                to get your business growing; rather the main focus is to help that business grow
                by every viewer attention. An attractive website not always reflects a decorative
                layout of flowers and color bands, but it signifies a site which has the potential
                ability to ensure regular visits from the same potential client. A website should
                be simple and client focused regardless of the decorative images used in its design.
                The aim of MILLENNIUM not only resides inside the name Internet Marketing, but it is
                hidden in the name of our below mentioned customized services of Positive Internet
                Marketing.
            </p>
        </div>
        <div class="tab-pane" id="Web_Design">
            <h4>Web Design</h4>
            <p>
                We are more oriented towards the concepts and operation of Search Engine Operation, arrangement and prominence of key words.
                Our team has the desires and passion of a skilled professional to create a site that
                not only does it ranks among the top but provides an interactive environment for
                the customer.
            </p>
        </div>
        <div class="tab-pane" id="Web_Development">
            <h4>Web Development</h4>
            <p>
                In software engineering, a software development methodology (also known as a system development methodology, software development
                life cycle, software development process, software process) is a division of software
                development work into distinct phases or activities with the intent of better planning
                and management.
            </p>
        </div>
        <div class="tab-pane" id="Android">
            <h4>Android/iOS Development</h4>
            <p>
                We provide services to develop all kinds of apps that includes games apps, social application apps and many more. our expert
                team of android developers will meet your requirements with fast work time in a cost
                effectual manner. our app developers are experienced in all up-to-the-minute technologies
                to create the mobile applications to your custom needs.
            </p>
        </div>
        <div class="tab-pane" id="E-Commerce">
            <h4>E-Commerce Solutions</h4>
            <p>
                MILLENNIUM Software Solutions offers in-depth knowledge of end-to-end e-business, B2B and e-commerce development solutions for
                different market verticals to help you compete and excel in the digital marketplace.
                MILLENNIUM Software Solutions the name for all your IT related needs. We provide the
                solutions which abridge technology and business.
            </p>
        </div>
        <div class="tab-pane" id="Java_Application">
            <h4>Java Application</h4>
            <p>
                We provide services to develop all kinds of apps that includes games apps, social application apps and many more. our expert
                team of android developers will meet your requirements with fast work time in a cost
                effectual manner. our app developers are experienced in all up-to-the-minute technologies
                to create the mobile applications to your custom needs.
            </p>
        </div>
    </div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>Portfolio</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="static/img/paris_1.gif" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="static/img/newyork_1.gif" alt="New York" width="400" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="static/img/SanFrancisco_1.gif" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
  </div><br>
  
  <h2>What our customers say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the result!"<br><span>Mr OM Prakash Patidar,client, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span>Monish Siddaki, Vice President, Rep Inc</span></h4>
      </div>
      <div class="item">
        <h4>"Could I... BE any more happy with this company?"<br><span>Ankit Saktpuriya, Actor, FriendsAlot</span></h4>
      </div>
      <div class="item">
        <h4>"I'm happy with this company?"<br><span>Priya Raikwar, Vice President, Rep Inc</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Pricing</h2>
    <h4>Choose a payment plan that works for you</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Basic</h1>
        </div>
        <div class="panel-body">
          <p><strong>20</strong> Lorem</p>
          <p><strong>15</strong> Ipsum</p>
          <p><strong>5</strong> Dolor</p>
          <p><strong>1</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>Free</h3>
          <h4>6 month</h4>
          <a type="button" class="btn btn-lg" href="newuser">Sign Up</a>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p><strong>50</strong> Lorem</p>
          <p><strong>25</strong> Ipsum</p>
          <p><strong>10</strong> Dolor</p>
          <p><strong>3</strong> Site</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$19</h3>
          <h4>1 year</h4>
          <a type="button" class="btn btn-lg" href="newuser">Sign Up</a>
       
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><strong>100</strong> Lorem</p>
          <p><strong>50</strong> Ipsum</p>
          <p><strong>25</strong> Dolor</p>
          <p><strong>5</strong> Site</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$29</h3>
          <h4>1 year</h4>
          <a type="button" class="btn btn-lg" href="newuser">Sign Up</a>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Contact Section) -->
<!-- Image of location/map -->
 <img src="https://www.w3schools.com/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%"> 
<!-- <iframe style="align-content: center;" src="https://www.google.com/maps/embed?pb=!4v1552630733353!6m8!1m7!1sCAoSLEFGMVFpcFBqZU13cnlsZ1hfclRseUxrMUtEeXFJOC1HbzRIcl85cUZwUWda!2m2!1d22.6852093!2d75.8730774!3f302.95!4f23.060000000000002!5f1.2780929574532185" class="w3-image w3-greyscale-min" width="1300" height="393"  style="width:100%" ></iframe> -->

<%@ include file="templates/footerMillennium.jsp" %>
