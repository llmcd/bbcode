Sub Main()
content ={
    StreamBitrates: [],
    StreamQualities:  [""],
    StreamFormat: "mp4",
    StreamContentIDs: [""]
    Title: ""
    stream: {
      url:  "#"
    }
  }
  
  port = CreateObject("roMessagePort")
  screen = CreateObject("roVideoScreen")
  screen.SetMessagePort(port)
  screen.SetContent(content)
  screen.Show()

  while true
    msg = wait(0, port)

    if type(msg) = "roVideoScreenEvent"
      if msg.isScreenClosed()
        exit while
      end if
    end if
  end while

  screen.Close()
End Sub
