<?php
echo "<div style='color:red;text-align:center;'><strong>Order your pictures in the slideshow from 1-6. Put 0 if you want hide a particular picture.</strong></div>";
echo $this->Form->create();
echo '<table>';
foreach($pictures as $key => $picture) {
	echo '<tr>';
	echo $this->Form->input("$key.SlideshowPicture.id", ['label' => false, 'div' => false, 'hidden', 'value' => $picture['SlideshowPicture']['id']]);
	echo '<th style="text-align=center">' . $this->Html->image($picture['SlideshowPicture']['view_url'], ['width' => 200, 'height' => 150, 'style="margin-left:400px;"']) . '</th>';
	echo '<th style="width:200px">' . $this->Form->input("$key.SlideshowPicture.position", ['value' => $picture['SlideshowPicture']['position'], 'width' => 200, 'div' => false]) . '</th>';
	echo '</tr>';
}
echo '</table>';
echo '<div style="text-align:right;">' . $this->Form->end(__('Submit')) . '</div>'; 
?>
