@echo off
powershell.exe -Command "$screenshot=[Windows.Forms.Screen]::PrimaryScreen.Bounds;$bitmap=New-Object Drawing.Bitmap $screenshot.Width,$screenshot.Height;$graphics=[Drawing.Graphics]::FromImage($bitmap);$graphics.CopyFromScreen($screenshot.Location,[Drawing.Point]::Empty,0,0,$bitmap.Size);$bitmap.Save('D:\screenshot.png',[Drawing.Imaging.ImageFormat]::Png);$bitmap.Dispose();$graphics.Dispose();"