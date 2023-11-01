import qrcode

def get_user_input():
    numbers = input("Digite uma sequência de números (sem vírgulas): ")
    return numbers

def create_qr_code(data):
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(data)
    qr.make(fit=True)

    img = qr.make_image(fill_color="black", back_color="white")
    img.save("qrcode.png")

if __name__ == "__main__":
    numbers = get_user_input()
    print("Números inseridos:", numbers)

    confirmation = input("Deseja criar um código QR com esses números? (S/N): ")
    if confirmation.lower() == "s":
        cod = "*123" + numbers + "#"
        create_qr_code(cod)
        print("Código QR criado com sucesso como 'qrcode.png'.")
