<?php
include 'page_header.php';

if(empty($_SESSION['uname']))
{
    echo "<script>window.location.assign('login.php')</script>";
}
?>
<style>
    .btn-primary {
    color: #fff;
    background-color: #428bca;
    border-color: #357ebd;
    width:96%;margin:10px;
    }
    .btn {
    display: inline-block;
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
}
</style>
<script>
    function po_click()
    {
        document.getElementById('form1').action = 'po_form.php';
        document.form1.submit();
    }
    function wo_click()
    {
        
        document.getElementById('form1').action = 'wo_po_form.php';
        document.form1.submit();
    
    }
</script>
<form name='form1' id='form1'>
<?php
echo "<table style='width:800px' align=center   >";
    echo "<tr>";
        echo "<td style='width:50%'><input type='button' class='btn-primary btn'  value='PO Form' onclick='po_click()' ></td>";
        echo "<td style='width:50%'><input type='button' value='Form without PO'  class='btn-primary btn' onclick='wo_click()'></td>";
        
    echo "</tr>";
echo "</table>";

?>
</form>
