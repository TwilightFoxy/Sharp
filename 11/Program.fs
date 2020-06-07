open System
open System.Windows.Forms

let MainForm = new Form(Width = 420, Height = 300, Text = "F# Test Form")

let Edit1 = new TextBox(Top = 50, Width = 400, Text="101") 
let ProgressBar1 = new ProgressBar(Dock=DockStyle.Top) 
MainForm.Controls.Add(ProgressBar1)
MainForm.Controls.Add(Edit1) 
let Change _ = ProgressBar1.Value <- Edit1.TextLength*2
let _ = Edit1.TextChanged.Add(Change)
[<EntryPoint>]
let main argv = 
    Application.Run(MainForm)
    0 
