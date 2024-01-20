<?php 
 include "conn.php";

 $dashSelectMesg = "SELECT * FROM messagebox";
 $dashResultMsg = $conn->query($dashSelectMesg);
 if ($dashResultMsg->num_rows > 0) {
     while($dashMsgRow = $dashResultMsg->fetch_assoc()) {
         if($dashMsgRow['message_id'] !== $_SESSION["types"]){
?>
 <li class="chat-list left" id="10">
     <div class="conversation-list">
         <div class="chat-avatar">
             <img src="assets/images/users/avatar-2.jpg" alt="">
         </div>
         <div class="user-chat-content">
             <div class="ctext-wrap">
             <div class="ctext-wrap-content" id="1">        
                 <p class="mb-0 ctext-content"><?= $dashMsgRow['messages']?></p>
             </div>
             </div>
             <div class="conversation-name">
                 <small class="text-muted time"><?= $dashMsgRow['dates']?></small>
                 <span class="text-success check-message-icon"><i class="bx bx-check-double"></i></span>
             </div>
         </div>
     </div>
 </li>
 <?php } else{?>
 <li class="chat-list right" id="11">
     <div class="conversation-list">
         <div class="chat-avatar">
             <img src="assets/images/users/avatar-1.jpg" alt="">
         </div>
         <div class="user-chat-content">
             <div class="ctext-wrap">
             <div class="ctext-wrap-content" id="1">        
                 <p class="mb-0 ctext-content"><?= $dashMsgRow['messages']?></p>
             </div>
             </div>
             <div class="conversation-name">
                 <small class="text-muted time"><?= $dashMsgRow['dates']?></small>
                 <span class="text-success check-message-icon"><i class="bx bx-check-double"></i></span>
             </div>
         </div>
     </div>
 </li>
<?php }}}?>