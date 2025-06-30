# PDF Invoice Generator (Rails)

This is a Ruby on Rails web app to create, view, and **download invoice PDFs** using the `wicked_pdf` gem and `wkhtmltopdf` engine. It supports Unicode symbols like ₹, dynamic data, and is production-ready for invoicing.

---

## 🚀 Tech Stack

- Ruby 3.4.1
- Rails 8.0.2
- PostgreSQL (or SQLite)
- WickedPDF + wkhtmltopdf

---

## 📦 Features

- Add/edit invoices via standard Rails forms
- Show invoice in browser
- Download invoice as PDF at `/invoices/:id.pdf`
- UTF-8 support (₹, €, etc.)
- Simple HTML-to-PDF layout using `DejaVu Sans`

---

## 📁 Folder Highlights

```
app/views/invoices/
 ├── show.html.erb        # Normal HTML view
 ├── show.pdf.erb         # PDF-only content
 ├── _form.html.erb       # Form partial
 └── index.html.erb       # Invoice list

app/views/layouts/
 └── pdf.html.erb         # PDF layout with UTF-8 + styling
```

---

## 🔧 Setup Instructions

### 1. Clone and install dependencies
```bash
git clone https://github.com/2017kamb/pdf_invoice_generator.git
cd pdf_invoice_generator
bundle install
```

### 2. Setup the database
```bash
rails db:create db:migrate db:seed
```

### 3. Start the Rails server
```bash
rails s
```

---

## 🧾 Generate PDF

To download an invoice PDF, go to:

```text
http://localhost:3000/invoices/1.pdf
```

The PDF content is rendered from:

- `app/views/invoices/show.pdf.erb`
- Using layout `app/views/layouts/pdf.html.erb`

---

## ✅ UTF-8 & ₹ Symbol Support

The layout includes:

```html
<meta charset="UTF-8">
<style>
  body { font-family: DejaVu Sans, sans-serif; }
</style>
```

---

## 👨‍💻 Author

**Raj Kumar**  
Senior Ruby on Rails Developer (10+ Yrs)  
🔗 [LinkedIn](https://www.linkedin.com/in/2017kamb)  
🔗 [GitHub](https://github.com/2017kamb)

---

## 📃 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
