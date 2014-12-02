<?php

echo '<table>';
foreach($all as $key => $image) {
echo '<tr>';
echo '<th>'. $this->Html->image($image['SlideshowPicture']['thumb_url']). '</th>';
echo '<th>' . $this->Html->link('Edit Picture', 'edit/'.$image['SlideshowPicture']['id']) . '</th>';
echo '<th>';
if($image['SlideshowPicture']['position'] > 0) {
	echo '<a href="/admin/slideshow_pictures/visibility_toggle/'. $image['SlideshowPicture']['id']. '><strong link="green" style="color:green";>Showing</strong></a>';
	echo '<a href="/admin/slideshow_pictures/move_up/'.$image['SlideshowPicture']['id']. '">'. $this->Html->image('admin_page_icons/uparrow.jpg', ['width' => 20, 'height' => 20]) .'</a>';
	echo '<a href="/admin/slideshow_pictures/move_down/'.$image['SlideshowPicture']['id']. '">'. $this->Html->image('admin_page_icons/downarrow.jpg', ['width' => 20, 'height' => 20]) .'</a>';
}else {
	echo '<a href="/admin/slideshow_pictures/visibility_toggle/'. $image['SlideshowPicture']['id']. '"><strong link="red" style="color:red;">Hidden</strong>';
}
echo '</tr>';
}
echo '</table>';

if(count($all) <= 6) {
	echo '<div style="text-align:center;">' . $this->Html->link('add pictures!', '/admin/slideshow_pictures/add') . '</div>';
}
//echo '<div style="text-align:center;">' . $this->Html->link('Reorder pictures!', '/admin/slideshow_pictures/reorder') . '</div>';
?>

