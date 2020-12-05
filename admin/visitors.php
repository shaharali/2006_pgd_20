<?php include 'admin_lib/header.php'; ?>

<hr style="color: black">
<div>
<h2>Visitor's Data</h2>
<?php  
$per_page_data = 50;
if(isset($_GET['page'])){
  $page=$_GET['page'];
  $j=$page * $per_page_data;
 
}else{
  $page=1;
  $j = 0;
}

$start_from=($page-1)* $per_page_data;


 $query= "SELECT count(visitor_id) AS total FROM tbl_visitor";
    $page_data=$db->select($query);
    if($page_data){     
      while ($result=$page_data->fetch_assoc()) {
        $total_rows = $result['total'];
      }}


$total_pages= ceil($total_rows/$per_page_data);

$live_pages = $page + 2;
if($live_pages> $total_pages){
$live_pages = $total_pages;
}

if($page>1){
$page_now = $page-1;
}else{$page_now = $page ;}


echo '<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="visitors.php?page='.$page_now."&sl=".$j.'">Previous</a></li>';
for ($i=$page_now; $i <=$live_pages ; $i++) { 
echo   '<li class="page-item"><a class="page-link" href="visitors.php?page='.$i."&sl=".$j.'">'.$i.'</a></li>';
    };
echo    '<li class="page-item"><a class="page-link" href="visitors.php?page='.$i."&sl=".$j.'">Next</a></li>
  </ul>
</nav>';



?>


	<table class="table table-nostyle">
		<thead>
			<tr>
				<th>Sl. No.</th>
				<th>E-mail</th>
				<th>Time Login</th>
				<th>Visitor's IP Address</th>
				<th>Page visited</th>
			</tr>
		</thead>
		<tbody>
	
			<?php
			$query = "SELECT * FROM tbl_visitor ORDER BY visitor_id DESC LIMIT $start_from, $per_page_data";
			$data = $db->select($query);
			if($data){
			
				while ($rows = $data->fetch_assoc()) {
					$start_from++;
					echo '<tr>
					<td>'.$start_from.'</td>
					<td>'.$rows['email'].'</td>
					<td>'.$rows['visit_time'].'</td>
					<td>'.$rows['visitor_ip'].'</td>					
					<td>'.$rows['visit_page'].'</td>
					</tr>';
				}
			}
			?>
		</tbody>
	</table>
	
</div>
<?php include 'admin_lib/footer.php'; ?>