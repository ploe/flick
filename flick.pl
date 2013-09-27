#! /usr/bin/perl

$dir = shift;

if(!$dir) {
	print STDERR "usage: flick [GLOB STRING]\nPoint at a directory with images in and watch the MATE desktop wallpaper roll.";
	exit;
}

@files = glob "$dir";
$i = int rand @files;
system "gsettings set org.mate.background picture-filename " . @files[$i];
