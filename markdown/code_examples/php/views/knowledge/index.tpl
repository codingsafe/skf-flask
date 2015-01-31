<?php  include HOME . DS . 'includes' . DS . 'header.inc.php'; e ?>
 
<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Knowledge Base Security Vulnerabilities</h3>
          	
          	<form  method="post" action="/knowledge/search"><br/>
          	<input type="text" name="search" placeholder="Search vulnerability"/>
          	</form>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                       <div class="panel-group" id="accordion">
						<?php
						    if ($vulnerabilities):
						    $i = 0;
						    foreach ($vulnerabilities as $a): ?>
							
						  <div class="panel panel-default">
						    <div class="panel-heading" style='background-color:white;'>
						      <h4 class="panel-title">
						        <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $a['vulnID']; ?>">
						          <?php echo htmlspecialchars($a['vulnName']); ?>
						        </a>
						      </h4>
						    </div>
						    <div id="collapse<?php echo $a['vulnID']; ?>" class="panel-collapse collapse">
						      <div class="panel-body" style='background-color:#f5f5f5;'>
							<b>Description:</b><br>					        
							<p><?php echo htmlspecialchars($a['vulnDesc']); ?></p>
							<b>Solution:</b><br>					        
							<p><?php echo htmlspecialchars($a['vulnSol']); ?></p>
						      </div>
						    </div>
						  </div>
						<?php
						    endforeach; ?>
						<?php endif; ?>
					</div>                           
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->
         
<?php include HOME . DS . 'includes' . DS . 'footer.inc.php'; ?>


