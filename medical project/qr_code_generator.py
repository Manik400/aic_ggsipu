import qrcode

# Define the URL or endpoint of your API
api_url = "http://192.168.1.11:8080/predict"  # Adjust the URL as needed

# Generate the QR code
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(api_url)
qr.make(fit=True)

# Create a PIL image from the QR code data
img = qr.make_image(fill_color="black", back_color="white")

# Save the QR code image to a file
img.save("api_qr_code.png")
