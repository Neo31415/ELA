import cv2

def nothing(x):
	pass
	
def ELA(img):
	cv2.namedWindow('DiffWindow')

	img = cv2.imread('samples.jpg')
	img = cv2.resize(img, (540, 540))
	cv2.imshow('DiffWindow', img)

	cv2.createTrackbar( 'C_Rate', 'DiffWindow', 0, 100, nothing)

	while(1):
		k = cv2.waitKey(1)
		if k==27:
			break

		x = cv2.getTrackbarPos('C_Rate', 'DiffWindow')
		cv2.imwrite('tiger_sv.jpg', img, [cv2.IMWRITE_JPEG_QUALITY, x])
		img_sv = cv2.imread('tiger_sv.jpg')
		cv2.imshow('DiffWindow_sv', img_sv)
		diff_img = cv2.absdiff(img, img_sv)
		cv2.imshow('Diff_Img', diff_img)

		

	cv2.waitKey(0)
	cv2.destroyAllWindows()