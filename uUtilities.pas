unit uUtilities;

interface
uses
  SysUtils
    , ActiveX
    , System.IOUtils
    , System.SyncObjs
    , System.Classes;

  procedure logString(aMessage: String);

implementation

  procedure appendToFile(const aFileName: Tfilename; const aData: string; aOverwrite: boolean = false);
  var
    section: TCriticalSection;

  begin
    section := TCriticalSection.Create;
    section.Enter;

    try
      if aOverwrite then
        TFile.WriteAllText(aFileName, aData + #$0D#$0A, TEncoding.ANSI)
      else
        TFile.AppendAllText(aFileName, aData + #$0D#$0A, TEncoding.ANSI);
    except on ex: EInOutError do
      begin
        logString('append to file error ' + ex.Message);
        raise Exception.Create('File writing failed');
      end;
    end;

   section.Leave;

  end;

  procedure logString(aMessage: string);
  var
    ExePath, LogFileName: TFileName;
    section: TCriticalSection;

  begin

    section := TCriticalSection.Create;
    section.Enter;
    try
      ExePath := TPath.GetDirectoryName(GetModuleName(HInstance));
      LogFileName := TPath.Combine(ExePath, 'Logger.log');
      TFile.AppendAllText(LogFileName, Format('%s [%s] > %s %s',
        [DateToStr(now), TimeToStr(now), aMessage, #$0D#$0A]), TEncoding.ANSI);
    except on ex: EInOutError do
       //log('Error writing log...');
    end;
    section.Leave;

  end;

end.

