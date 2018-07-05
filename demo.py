
im1 = mstring('demo.jpg'); print im1
OutputMap = analyze(im1)
for ii in mslice[1:length(OutputMap)]:
    imagesc(OutputMap(ii))
    pause
    end