Sub Main()
  screen = CreateObject("roParagraphScreen")
  port = CreateObject("roMessagePort")
  screen.SetMessagePort(port)
  screen.AddParagraph("Hello World!")
  screen.AddParagraph("Hello World, Again!")
  screen.SetTitle("Example")
  screen.Show()

  while true
    msg = Wait(0, port)

    if type(msg) = "roParagraphScreenEvent"
      if msg.isScreenClosed()
        exit while
      end if
    end if
  end while

  screen.Close()
End Sub
