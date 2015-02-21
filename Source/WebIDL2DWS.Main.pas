unit WebIDL2DWS.Main;

interface

uses
  (* Delphi *)
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ActnList, Vcl.StdActns, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls, 
  Vcl.ExtCtrls,

  (* SynEdit *)
  SynEdit, SynEditSearch, SynEditMiscClasses, SynEditPlugins, SynMacroRecorder,
  SynHighlighterDWS, SynEditHighlighter, SynHighlighterWebIDL, SynEditExport,
  SynExportHTML, SynHighlighterHtml,

  (* Indy *)
  IdComponent,

  (* Virtual TreeView
  VirtualTrees,

  (* DWS *)
  dwsTokenizer, dwsErrors, dwsWebIDL, dwsWebIDLTokenizer,

  (* Custom *)
  WebIDL2DWS.SpecifyURL;

type
  TArrayOfString = array of string;

  TReloadThread = class(TThread)
  private
    FURL: TArrayOfString;
    FWorkCountMax: Int64;
  protected
    procedure Execute; override;
  public
    constructor Create(URL: string); overload;
    constructor Create(URL: TArrayOfString); overload;

    procedure StatusEventHandler(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure WorkBeginHandler(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure WorkEndHandler(ASender: TObject; AWorkMode: TWorkMode);
    procedure WorkHandler(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  end;

  TScanThread = class(TThread)
  private
    FSourceHTML: string;
  protected
    procedure ExtractWithMSXML;
    procedure Execute; override;
  public
    constructor Create(SourceHTML: string);
  end;

  TTreeMessage = record
    Text: string;
    Line, Col: Integer;
  end;
  PTreeMessage = ^TTreeMessage;

  TFormWebIDL = class(TForm)
    ActionEditCopy: TEditCopy;
    ActionEditCut: TEditCut;
    ActionEditDelete: TEditDelete;
    ActionEditPaste: TEditPaste;
    ActionEditSelectAll: TEditSelectAll;
    ActionEditUndo: TEditUndo;
    ActionExtractWebIDL: TAction;
    ActionFetchAmbientLightAPI: TAction;
    ActionFetchBatteryAPI: TAction;
    ActionFetchBluetoothAPI: TAction;
    ActionFetchFileAPI: TAction;
    ActionFetchFrom: TAction;
    ActionFetchFromWhatWG: TAction;
    ActionFetchGeolocationAPI: TAction;
    ActionFetchHTMLMediaCaptureAPI: TAction;
    ActionFetchMediaCaptureAndStreamsAPI: TAction;
    ActionFetchMediaStreamRecordingAPI: TAction;
    ActionFetchMidiAPI: TAction;
    ActionFetchNetworkInformationAPI: TAction;
    ActionFetchNetworkServiceDiscoveryAPI: TAction;
    ActionFetchPageVisibilityAPI: TAction;
    ActionFetchPerformanceTimeLineAPI: TAction;
    ActionFetchPickContactsIntentAPI: TAction;
    ActionFetchPickMediaIntendAPI: TAction;
    ActionFetchProximityAPI: TAction;
    ActionFetchResourceTimingAPI: TAction;
    ActionFetchServerSendEventsAPI: TAction;
    ActionFetchSVG: TAction;
    ActionFetchUserTimingsAPI: TAction;
    ActionFetchVibrationAPI: TAction;
    ActionFetchWacAccelerometer: TAction;
    ActionFetchWacCalender: TAction;
    ActionFetchWacCamera: TAction;
    ActionFetchWacContacts: TAction;
    ActionFetchWacCore: TAction;
    ActionFetchWacDeviceIntegration: TAction;
    ActionFetchWacDeviceStatus: TAction;
    ActionFetchWacFileSystem: TAction;
    ActionFetchWacGeolocation: TAction;
    ActionFetchWacMessaging: TAction;
    ActionFetchWacOrientation: TAction;
    ActionFetchWacTasks: TAction;
    ActionFetchWacViewpointFeature: TAction;
    ActionFetchWacWebview: TAction;
    ActionFetchWebAudioAPI: TAction;
    ActionFetchWebCL: TAction;
    ActionFetchWebCryptoKeyDiscoveryAPI: TAction;
    ActionFetchWebinosApp2AppMessagingAPI: TAction;
    ActionFetchWebinosAppLauncher: TAction;
    ActionFetchWebinosAppStateSynchronisationAPI: TAction;
    ActionFetchWebinosAuthenticationAPI: TAction;
    ActionFetchWebinosContactsAPI: TAction;
    ActionFetchWebinosContextAPI: TAction;
    ActionFetchWebinosCoreInterfaceAPI: TAction;
    ActionFetchWebinosDeviceInteractionAPI: TAction;
    ActionFetchWebinosDeviceStatusAPI: TAction;
    ActionFetchWebinosDiscoveryAPI: TAction;
    ActionFetchWebinosGenericActuatorAPI: TAction;
    ActionFetchWebinosGenericSensorAPI: TAction;
    ActionFetchWebinosMediaContentAPI: TAction;
    ActionFetchWebinosMessagingAPI: TAction;
    ActionFetchWebinosNavigationAPI: TAction;
    ActionFetchWebinosNFCAPI: TAction;
    ActionFetchWebinosPaymentAPI: TAction;
    ActionFetchWebinosRemoteUIAPI: TAction;
    ActionFetchWebinosSecureElementAPI: TAction;
    ActionFetchWebinosTVControlAPI: TAction;
    ActionFetchWebinosVehicleAPI: TAction;
    ActionFetchWebinosWebNotificationsAPI: TAction;
    ActionFetchWebinosWidgetAPI: TAction;
    ActionFetchWebIntentsAPI: TAction;
    ActionFetchWebKitIDL: TAction;
    ActionFetchWebRTC: TAction;
    ActionFetchWebSocketAPI: TAction;
    ActionFetchWebSpeechApi: TAction;
    ActionFetchWebWorkersAPI: TAction;
    ActionFetchWidgetInterfaceAPI: TAction;
    ActionFileExit: TFileExit;
    ActionFileOpen: TFileOpen;
    ActionFileSaveAs: TFileSaveAs;
    ActionList: TActionList;
    ActionSearchFind: TSearchFind;
    ActionSearchFindNext: TSearchFindNext;
    ActionSearchReplace: TSearchReplace;
    ActionTransformWebIDL: TAction;
    MainMenu: TMainMenu;
    MenuItemContactsAPI: TMenuItem;
    MenuItemContextAPI: TMenuItem;
    MenuItemDeviceInteractionAPI: TMenuItem;
    MenuItemDiscoveryAPI: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemEditCopy: TMenuItem;
    MenuItemEditCut: TMenuItem;
    MenuItemEditDelete: TMenuItem;
    MenuItemEditPaste: TMenuItem;
    MenuItemEditSelectAll: TMenuItem;
    MenuItemEditUndo: TMenuItem;
    MenuItemFetchAmbientLightAPI: TMenuItem;
    MenuItemFetchApp2AppMessagingAPI: TMenuItem;
    MenuItemFetchAppLauncherAPI: TMenuItem;
    MenuItemFetchAppStateSynchronisationAPI: TMenuItem;
    MenuItemFetchAuthenticationAPI: TMenuItem;
    MenuItemFetchBatteryAPI: TMenuItem;
    MenuItemFetchBluetoothAPI: TMenuItem;
    MenuItemFetchFileAPI: TMenuItem;
    MenuItemFetchFrom: TMenuItem;
    MenuItemFetchFromOtherSources: TMenuItem;
    MenuItemFetchFromW3C: TMenuItem;
    MenuItemFetchFromWAC: TMenuItem;
    MenuItemFetchFromWACAccelerometer: TMenuItem;
    MenuItemFetchFromWACCalender: TMenuItem;
    MenuItemFetchFromWACCamera: TMenuItem;
    MenuItemFetchFromWACContacts: TMenuItem;
    MenuItemFetchFromWACCore: TMenuItem;
    MenuItemFetchFromWACDeviceStatus: TMenuItem;
    MenuItemFetchFromWACFileSystem: TMenuItem;
    MenuItemFetchFromWACGeolocation: TMenuItem;
    MenuItemFetchFromWACIntegration: TMenuItem;
    MenuItemFetchFromWACMessaging: TMenuItem;
    MenuItemFetchFromWACOrientation: TMenuItem;
    MenuItemFetchFromWACTasks: TMenuItem;
    MenuItemFetchFromWACViewpointFeature: TMenuItem;
    MenuItemFetchFromWACWebview: TMenuItem;
    MenuItemFetchFromWebCL: TMenuItem;
    MenuItemFetchFromWebinos: TMenuItem;
    MenuItemFetchfromWhatWG: TMenuItem;
    MenuItemFetchGenericActuatorAPI: TMenuItem;
    MenuItemFetchGenericSensorAPI: TMenuItem;
    MenuItemFetchGeolocationAPI: TMenuItem;
    MenuItemFetchHtmlMediaCaptureAPI: TMenuItem;
    MenuItemFetchMediaCaptureAndStreamsAPI: TMenuItem;
    MenuItemFetchMediaContentAPI: TMenuItem;
    MenuItemFetchMessagingAPI: TMenuItem;
    MenuItemFetchMIDIAPI: TMenuItem;
    MenuItemFetchNavigationAPI: TMenuItem;
    MenuItemFetchNetworkInformationAPI: TMenuItem;
    MenuItemFetchNetworkServiceDiscoveryAPI: TMenuItem;
    MenuItemFetchNFCAPI: TMenuItem;
    MenuItemFetchPageVisibilityAPI: TMenuItem;
    MenuItemFetchPaymentAPI: TMenuItem;
    MenuItemFetchPerformanceTimelineAPI: TMenuItem;
    MenuItemFetchPickContactsIntentAPI: TMenuItem;
    MenuItemFetchPickMediaIntendAPI: TMenuItem;
    MenuItemFetchProximityAPI: TMenuItem;
    MenuItemFetchRemoteUIAPI: TMenuItem;
    MenuItemFetchResourceTimingAPI: TMenuItem;
    MenuItemFetchSecureElementAPI: TMenuItem;
    MenuItemFetchServerSentEventsAPI: TMenuItem;
    MenuItemFetchStreamRecorderAPI: TMenuItem;
    MenuItemFetchSVG11: TMenuItem;
    MenuItemFetchTVControlAPI: TMenuItem;
    MenuItemFetchUserTimingsAPI: TMenuItem;
    MenuItemFetchVehicleAPI: TMenuItem;
    MenuItemFetchVibrationAPI: TMenuItem;
    MenuItemFetchWebAudioAPI: TMenuItem;
    MenuItemFetchWebCryptoKeyDiscovery: TMenuItem;
    MenuItemFetchWebinosCoreInterface: TMenuItem;
    MenuItemFetchWebinosWidgetAPI: TMenuItem;
    MenuItemFetchWebIntentsAPI: TMenuItem;
    MenuItemFetchWebKitIDL: TMenuItem;
    MenuItemFetchWebNotificationsAPI: TMenuItem;
    MenuItemFetchWebRTCAPI: TMenuItem;
    MenuItemFetchWebSocketAPI: TMenuItem;
    MenuItemFetchWebWorkersAPI: TMenuItem;
    MenuItemFetchWidgetInterface: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemFileExit: TMenuItem;
    MenuItemFileOpen: TMenuItem;
    MenuItemFileSaveAs: TMenuItem;
    MenuItemProcessing: TMenuItem;
    MenuItemProcessingExtractWebIDL: TMenuItem;
    MenuItemSearch: TMenuItem;
    MenuItemSearchFind: TMenuItem;
    MenuItemSearchFindNext: TMenuItem;
    MenuItemSearchReplace: TMenuItem;
    MenuItemTransformWebIDL: TMenuItem;
    MenuItemWebSpeechAPI: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PageControl: TPageControl;
    SplitterMessages: TSplitter;
    StatusBar: TStatusBar;
    SynDWSSyn: TSynDWSSyn;
    SynEditDWS: TSynEdit;
    SynEditHTML: TSynEdit;
    SynEditSearch: TSynEditSearch;
    SynEditWebIDL: TSynEdit;
    SynExporterHTML: TSynExporterHTML;
    SynHTMLSyn: TSynHTMLSyn;
    SynMacroRecorderDWS: TSynMacroRecorder;
    SynMacroRecorderIDL: TSynMacroRecorder;
    TabHTML: TTabSheet;
    TabPascalDWS: TTabSheet;
    TabWebIDL: TTabSheet;
    TreeMessages: TVirtualStringTree;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionExtractWebIDLExecute(Sender: TObject);
    procedure ActionFetchAmbientLightAPIExecute(Sender: TObject);
    procedure ActionFetchBatteryAPIExecute(Sender: TObject);
    procedure ActionFetchBluetoothAPIExecute(Sender: TObject);
    procedure ActionFetchFileAPIExecute(Sender: TObject);
    procedure ActionFetchFromExecute(Sender: TObject);
    procedure ActionFetchFromWhatWGExecute(Sender: TObject);
    procedure ActionFetchGeolocationAPIExecute(Sender: TObject);
    procedure ActionFetchHTMLMediaCaptureAPIExecute(Sender: TObject);
    procedure ActionFetchMediaCaptureAndStreamsAPIExecute(Sender: TObject);
    procedure ActionFetchMediaStreamRecordingAPIExecute(Sender: TObject);
    procedure ActionFetchMidiAPIExecute(Sender: TObject);
    procedure ActionFetchNetworkInformationAPIExecute(Sender: TObject);
    procedure ActionFetchNetworkServiceDiscoveryAPIExecute(Sender: TObject);
    procedure ActionFetchPageVisibilityAPIExecute(Sender: TObject);
    procedure ActionFetchPerformanceTimeLineAPIExecute(Sender: TObject);
    procedure ActionFetchPickContactsIntentAPIExecute(Sender: TObject);
    procedure ActionFetchPickMediaIntendAPIExecute(Sender: TObject);
    procedure ActionFetchProximityAPIExecute(Sender: TObject);
    procedure ActionFetchResourceTimingAPIExecute(Sender: TObject);
    procedure ActionFetchServerSendEventsAPIExecute(Sender: TObject);
    procedure ActionFetchSVGExecute(Sender: TObject);
    procedure ActionFetchUserTimingsAPIExecute(Sender: TObject);
    procedure ActionFetchVibrationAPIExecute(Sender: TObject);
    procedure ActionFetchWacAccelerometerExecute(Sender: TObject);
    procedure ActionFetchWacCalenderExecute(Sender: TObject);
    procedure ActionFetchWacCameraExecute(Sender: TObject);
    procedure ActionFetchWacContactsExecute(Sender: TObject);
    procedure ActionFetchWacCoreExecute(Sender: TObject);
    procedure ActionFetchWacDeviceIntegrationExecute(Sender: TObject);
    procedure ActionFetchWacDeviceStatusExecute(Sender: TObject);
    procedure ActionFetchWacFileSystemExecute(Sender: TObject);
    procedure ActionFetchWacGeolocationExecute(Sender: TObject);
    procedure ActionFetchWacMessagingExecute(Sender: TObject);
    procedure ActionFetchWacOrientationExecute(Sender: TObject);
    procedure ActionFetchWacTasksExecute(Sender: TObject);
    procedure ActionFetchWacViewpointFeatureExecute(Sender: TObject);
    procedure ActionFetchWacWebviewExecute(Sender: TObject);
    procedure ActionFetchWebAudioAPIExecute(Sender: TObject);
    procedure ActionFetchWebCLExecute(Sender: TObject);
    procedure ActionFetchWebCryptoKeyDiscoveryAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosApp2AppMessagingAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosAppLauncherExecute(Sender: TObject);
    procedure ActionFetchWebinosAppStateSynchronisationAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosAuthenticationAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosContactsAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosContextAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosCoreInterfaceAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosDeviceInteractionAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosDeviceStatusAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosDiscoveryAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosGenericActuatorAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosGenericSensorAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosMediaContentAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosMessagingAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosNavigationAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosNFCAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosPaymentAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosRemoteUIAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosSecureElementAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosTVControlAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosVehicleAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosWebNotificationsAPIExecute(Sender: TObject);
    procedure ActionFetchWebinosWidgetAPIExecute(Sender: TObject);
    procedure ActionFetchWebIntentsAPIExecute(Sender: TObject);
    procedure ActionFetchWebKitIDLExecute(Sender: TObject);
    procedure ActionFetchWebRTCExecute(Sender: TObject);
    procedure ActionFetchWebSocketAPIExecute(Sender: TObject);
    procedure ActionFetchWebSpeechApiExecute(Sender: TObject);
    procedure ActionFetchWebWorkersAPIExecute(Sender: TObject);
    procedure ActionFetchWidgetInterfaceAPIExecute(Sender: TObject);
    procedure ActionFileOpenAccept(Sender: TObject);
    procedure ActionFileSaveAsAccept(Sender: TObject);
    procedure ActionFileSaveAsBeforeExecute(Sender: TObject);
    procedure ActionTransformWebIDLExecute(Sender: TObject);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure SynEditGutterPaint(Sender: TObject; aLine, X, Y: Integer);
    procedure SynEditStatusChange(Sender: TObject; Changes: TSynStatusChanges);
    procedure TreeMessagesFreeNode(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure TreeMessagesGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure TreeMessagesDblClick(Sender: TObject);
  private
    FTitle: string;
    FProgress: Single;
    FScanThread: TScanThread;
    FReloadThread: TReloadThread;
    FHighlighter: TSynWebIdlSyn;
    FIniFileName: TFileName;
    FFormFetchFromWebsite: TFormFetchFromWebsite;
    procedure AppendString(Value: string);
    procedure UpdateProgress(Value: Single);
    procedure SetProgress(const Value: Single);
  public
    procedure FetchFromURL(URL: string);
    procedure FetchFromURLs(URL: TArrayOfString);
    procedure FetchFromFile(FileName: TFileName);
    procedure FetchFromString(Value: string);
    procedure LoadWebIdlFromFile(FileName: TFileName);
    procedure SaveWebIdlToFile(FileName: TFileName);

    property Progress: Single read FProgress write SetProgress;
  end;

var
  FormWebIDL: TFormWebIDL;

implementation

{$R *.dfm}

uses
  System.IOUtils, System.RegularExpressions, System.IniFiles, Winapi.ActiveX,
  System.Win.COMObj, mshtml, IdHttp, IdURI, IdSSLOpenSSL, IdExceptionCore;

{ TReloadThread }

constructor TReloadThread.Create(URL: string);
begin
  SetLength(FURL, 1);
  FURL[0] := URL;
  inherited Create(False);
  FreeOnTerminate := True;
end;

constructor TReloadThread.Create(URL: TArrayOfString);
begin
  FURL := URL;
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TReloadThread.Execute;
var
  Index: Integer;
  IdHTTP: TidHTTP;
  IdSSLIOHandler: TIdSSLIOHandlerSocketOpenSSL;
  URI: TidURI;
  SourceCode: string;
  DocURL: string;
begin
  IdHTTP := TidHTTP.Create(nil);
  try
    IdHTTP.OnStatus := StatusEventHandler;
    IdHTTP.OnWorkBegin := WorkBeginHandler;
    IdHTTP.OnWork := WorkHandler;
    IdHTTP.OnWorkEnd := WorkEndHandler;

    SourceCode := '';
    for Index := 0 to High(FURL) do
    begin
      // decode URI to URL
      URI := TidURI.Create(FURL[Index]);
      try
        DocURL := 'http://' + URI.Host;
        if URI.Path <> '/' then
          DocURL := DocURL + URI.Path;
      finally
        URI.Free;
      end;

      try
        // use SSL I/O Handler to avoid issues with HTTPS
        IdSSLIOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        try
          IdHTTP.IOHandler := IdSSLIOHandler;

          // eventually add separator
          if SourceCode <> '' then
            SourceCode := SourceCode + #10#13;

          // download and concat source code
          SourceCode := SourceCode + IdHTTP.Get(FURL[Index]);
        finally
          IdSSLIOHandler.Free;
        end;

      except
        // write error message and exit;
        on E: Exception do
          Synchronize(procedure
          begin
            FormWebIDL.UpdateProgress(0);
            FormWebIDL.StatusBar.Panels[1].Text := Format('ERROR! (%s)', [E.Message]);
            FormWebIDL.FReloadThread := nil;
            Exit;
          end);
      end;
    end;
  finally
    IdHTTP.Free;
  end;

  // finalize download
  Synchronize(procedure
  begin
    FormWebIDL.FetchFromString(SourceCode);
    FormWebIDL.UpdateProgress(0);
    FormWebIDL.StatusBar.Panels[1].Text := 'Done!';
    FormWebIDL.FReloadThread := nil;
    FormWebIDL.TabHTML.Show;
  end);
end;

procedure TReloadThread.StatusEventHandler(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  Synchronize(procedure begin FormWebIDL.StatusBar.Panels[1].Text := AStatusText; end);
end;

procedure TReloadThread.WorkBeginHandler(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  FWorkCountMax := AWorkCountMax;
end;

procedure TReloadThread.WorkEndHandler(ASender: TObject; AWorkMode: TWorkMode);
begin
  Synchronize(procedure begin FormWebIDL.Progress := 0; end);
end;

procedure TReloadThread.WorkHandler(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  if FWorkCountMax <> 0 then
    Synchronize(procedure begin FormWebIDL.Progress := AWorkCount / FWorkCountMax; end);
end;


{ TScanThread }

constructor TScanThread.Create(SourceHTML: string);
begin
  FSourceHTML := SourceHTML;
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TScanThread.ExtractWithMSXML;
type
  TagsOfClass = record
    Tags: OleVariant;
    ClassName: string;
  end;
var
  IDoc: IHTMLDocument2;
  v: Variant;
  Index, ItemCount, CurrentCount: integer;
  Tags: array of TagsOfClass;
  InnerTags: OleVariant;
  TagsIndex: Integer;
  InnerTagsIndex: Integer;
  CodeClass: string;
  InnerString: string;
begin
  CoInitialize(nil);
  IDoc := CreateComObject(Class_HTMLDOcument) as IHTMLDocument2;
  try
    IDoc.designMode := 'on';
    while IDoc.readyState <> 'complete' do
      Application.ProcessMessages;
    v := VarArrayCreate([0, 0], VarVariant);

    v[0] := FSourceHTML;
    IDoc.write(PSafeArray(System.TVarData(v).VArray));
    IDoc.designMode := 'off';
    while IDoc.readyState <> 'complete' do
      Application.ProcessMessages;

    if Terminated then
      Exit;

    Synchronize(procedure begin FormWebIDL.UpdateProgress(0.1); end);

    // extract tags
    SetLength(Tags, 2);
    with Tags[0] do
    begin
      ClassName := 'pre';
      Tags := IDoc.all.tags(ClassName);
    end;

    if Terminated then
      Exit;

    Synchronize(procedure begin FormWebIDL.UpdateProgress(0.2); end);

    with Tags[1] do
    begin
      ClassName := 'code';
      Tags := IDoc.all.tags(ClassName);
    end;

    if Terminated then
      Exit;

    ItemCount := Tags[0].Tags.Length + Tags[1].Tags.Length;

    // eventually scan div tags as well
    if True {ItemCount = 0} then
    begin
      SetLength(Tags, 3);
      with Tags[2] do
      begin
        ClassName := 'div';
        Tags := IDoc.all.tags(ClassName);
      end;
      ItemCount := ItemCount + Tags[2].Tags.Length;

      if Terminated then
        Exit;

      Synchronize(procedure begin FormWebIDL.UpdateProgress(0.3); end);
    end;

    // eventually scan HTML5 dl tags as well
    if True {ItemCount = 0} then
    begin
      SetLength(Tags, 4);
      with Tags[3] do
      begin
        ClassName := 'dl';
        Tags := IDoc.all.tags(ClassName);
      end;
      ItemCount := ItemCount + Tags[3].Tags.Length;

      if Terminated then
        Exit;

      Synchronize(procedure begin FormWebIDL.UpdateProgress(0.4); end);
    end;

    Synchronize(procedure begin FormWebIDL.UpdateProgress(0.5); end);

    CurrentCount := 0;

    for TagsIndex := 0 to High(Tags) do
      with Tags[TagsIndex] do
        if Tags.Length > 0 then
        begin
          for Index := 0 to Tags.Length - 1 do
          begin
            CodeClass := Tags.Item(Index).className;
            if Pos('idl', CodeClass) > 0 then
            begin
              if ClassName = 'div' then
              begin
                InnerString := '';
                InnerTags := Tags.Item(Index).all.tags('pre');
                for InnerTagsIndex := 0 to InnerTags.Length - 1 do
                  InnerString := InnerString + InnerTags.Item(InnerTagsIndex).innerText;
              end
              else
              if ClassName = 'dl' then
              begin
                InnerString := '';
                InnerTags := Tags.Item(Index).all.tags('dt');
                for InnerTagsIndex := 0 to InnerTags.Length - 1 do
                  InnerString := InnerString + InnerTags.Item(InnerTagsIndex).innerText;
              end
              else
                InnerString := Tags.Item(Index).innerText;
              Synchronize(
                procedure
                begin
                  FormWebIDL.AppendString(InnerString);
                end);
              if Terminated then
                Exit;
            end;

            // advance progress
            Inc(CurrentCount);
            Synchronize(
              procedure
              begin
                FormWebIDL.UpdateProgress(0.3 + 0.7 * CurrentCount / ItemCount);
              end);
          end;

          if Terminated then
            Exit;
        end;

  finally
    IDoc := nil;
    CoUnInitialize;
  end;
end;

procedure TScanThread.Execute;
begin
  inherited;

  Synchronize(procedure begin FormWebIDL.UpdateProgress(0); end);
  ExtractWithMSXML;
  Synchronize(procedure
  begin
    FormWebIDL.UpdateProgress(0);
    FormWebIDL.StatusBar.Panels[1].Text := 'Done!';
    FormWebIDL.FScanThread := nil;
    FormWebIDL.TabWebIDL.Show;
  end);
end;


{ TFrmWebIDL }

procedure TFormWebIDL.FormCreate(Sender: TObject);
begin
  FIniFileName := ChangeFileExt(ParamStr(0), '.ini');
  FProgress := 0;

  TreeMessages.NodeDataSize := SizeOf(TTreeMessage);

  FHighlighter := TSynWebIdlSyn.Create(Self);
  SynEditWebIDL.Highlighter := FHighlighter;

  FFormFetchFromWebsite := TFormFetchFromWebsite.Create(Self);
end;

procedure TFormWebIDL.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFormFetchFromWebsite);
  FreeAndNil(FHighlighter);
end;

procedure TFormWebIDL.FormShow(Sender: TObject);
var
  RecentFile: TFileName;
begin
  with TIniFile.Create(FIniFileName) do
  try
    FTitle := ReadString('Recent', 'Title', FTitle);

    RecentFile := ReadString('Recent', 'HTML File', '');
    if FileExists(RecentFile) then
      FetchFromFile(RecentFile);

    RecentFile := ReadString('Recent', 'Web IDL File', '');
    if FileExists(RecentFile) then
      LoadWebIdlFromFile(RecentFile);

    RecentFile := ReadString('Recent', 'Smart Pascal (DWS) File', '');
    if FileExists(RecentFile) then
      SynEditDWS.Lines.LoadFromFile(RecentFile);
  finally
    Free;
  end;

  if FileExists(ChangeFileExt(FIniFileName, '.urls')) then
    FFormFetchFromWebsite.ComboBoxText.Items.LoadFromFile(
      ChangeFileExt(FIniFileName, '.urls'));

  if SynEditHTML.Lines.Count = 0 then
    if SynEditWebIDL.Lines.Count = 0 then
      if SynEditDWS.Lines.Count <> 0 then
        TabPascalDWS.Show
      else
    else
      TabWebIDL.Show;
end;

procedure TFormWebIDL.FormClose(Sender: TObject; var Action: TCloseAction);
var
  RecentFile: string;
  ProcessedTitle: string;
  Index: Integer;
begin
  with TIniFile.Create(FIniFileName) do
  try
    WriteString('Recent', 'Title', FTitle);

    // make title valid
    ProcessedTitle := Trim(FTitle);
    Index := 1;
    while Index < Length(ProcessedTitle) do
    begin
      if not TPath.IsValidFileNameChar(ProcessedTitle[Index]) or
        (Ord(ProcessedTitle[Index]) >= $80) then
        Delete(ProcessedTitle, Index, 1)
      else
        Inc(Index);
    end;

    if ProcessedTitle = '' then
      ProcessedTitle := 'Recent';

    RecentFile := ExtractFilePath(FIniFileName) + 'APIs\' + ProcessedTitle + '.htm';
    ForceDirectories(ExtractFileDir(RecentFile));

    WriteString('Recent', 'HTML File', RecentFile);
    SynEditHTML.Lines.SaveToFile(RecentFile);

    RecentFile := ChangeFileExt(RecentFile, '.idl');
    WriteString('Recent', 'Web IDL File', RecentFile);
    SynEditWebIDL.Lines.SaveToFile(RecentFile);

    RecentFile := ChangeFileExt(RecentFile, '.pas');
    WriteString('Recent', 'Smart Pascal (DWS) File', RecentFile);
    SynEditDWS.Lines.SaveToFile(RecentFile);
  finally
    Free;
  end;

  if FFormFetchFromWebsite.ComboBoxText.Items.Count > 0 then
    FFormFetchFromWebsite.ComboBoxText.Items.SaveToFile(
      ChangeFileExt(FIniFileName, '.urls'));
end;

procedure TFormWebIDL.LoadWebIdlFromFile(FileName: TFileName);
begin
  SynEditWebIDL.Lines.LoadFromFile(FileName);
end;

procedure TFormWebIDL.SaveWebIdlToFile(FileName: TFileName);
begin
  SynEditWebIDL.Lines.SaveToFile(FileName);
end;

procedure TFormWebIDL.SetProgress(const Value: Single);
begin
  if FProgress <> Value then
  begin
    FProgress := Value;
    StatusBar.Invalidate;
  end;
end;

procedure TFormWebIDL.FetchFromFile(FileName: TFileName);
begin
  // save as recent specification
  with TStringList.Create do
  try
    LoadFromFile(FileName);
    FetchFromString(Text);
  finally
    Free;
  end;
end;

function ExtractHtmlTitle(HtmlCode: string): string;
var
  Start, Stop: Integer;
begin
  Result := '';
  Start := Pos('<title>', HtmlCode);
  Stop := Pos('</title>', HtmlCode);
  if (Start > 0) and (Stop > Start + 7) then
  begin
    Inc(Start, 7);
    Result := Copy(HtmlCode, Start, Stop - Start);
  end;
end;

procedure TFormWebIDL.FetchFromString(Value: string);
var
  RecentFile: string;
begin
  SynEditHTML.Text := Value;

  FTitle := ExtractHtmlTitle(Value);

  if FTitle <> '' then
  begin
    RecentFile := ChangeFileExt(FTitle, '.idl');
    if FileExists(RecentFile) then
      LoadWebIdlFromFile(RecentFile);

    RecentFile := ChangeFileExt(FTitle, '.pas');
    if FileExists(RecentFile) then
      SynEditDWS.Lines.LoadFromFile(RecentFile);
  end;

  StatusBar.Panels[0].Text := '';
end;

procedure TFormWebIDL.FetchFromURL(URL: string);
begin
  if Assigned(FReloadThread) then
  begin
    FReloadThread.Terminate;
    FReloadThread.WaitFor;
    FreeAndNil(FReloadThread);
  end;

  StatusBar.Panels[0].Text := 'Loading HTML';
  StatusBar.Panels[1].Text := 'This may take a while!';

  FReloadThread := TReloadThread.Create(URL);
end;

procedure TFormWebIDL.FetchFromURLs(URL: TArrayOfString);
begin
  if Assigned(FReloadThread) then
  begin
    FReloadThread.Terminate;
    FReloadThread.WaitFor;
    FreeAndNil(FReloadThread);
  end;

  StatusBar.Panels[0].Text := 'Loading HTML';
  StatusBar.Panels[1].Text := 'This may take a while!';

  FReloadThread := TReloadThread.Create(URL);
end;

procedure TFormWebIDL.ActionExtractWebIDLExecute(Sender: TObject);
begin
  if Assigned(FScanThread) then
  begin
    FScanThread.Terminate;
    FScanThread.WaitFor;
    FreeAndNil(FScanThread);
  end;

  StatusBar.Panels[0].Text := 'Extracting Web IDL';
  StatusBar.Panels[1].Text := 'This may take a while, really!';
  SynEditWebIDL.Clear;

  FScanThread := TScanThread.Create(SynEditHTML.Text);
end;

procedure TFormWebIDL.ActionFetchAmbientLightAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/ambient-light/');
end;

procedure TFormWebIDL.ActionFetchBatteryAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/battery-status/');
end;

procedure TFormWebIDL.ActionFetchBluetoothAPIExecute(Sender: TObject);
begin
  FetchFromURL('https://webbluetoothcg.github.io/web-bluetooth/');
end;

procedure TFormWebIDL.ActionFetchFromExecute(Sender: TObject);
var
  URL: string;
begin
  if FFormFetchFromWebsite.ShowModal = mrOk then
  begin
    URL := FFormFetchFromWebsite.URL;
    if URL <> '' then
      FetchFromURL(URL);
  end;
end;

procedure TFormWebIDL.ActionFetchFromWhatWGExecute(Sender: TObject);
begin
  FetchFromURL('http://www.whatwg.org/specs/web-apps/current-work/');
end;

procedure TFormWebIDL.ActionFetchGeolocationAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/geolocation-API/');
end;

procedure TFormWebIDL.ActionFetchMediaCaptureAndStreamsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/mediacapture-streams/');
end;

procedure TFormWebIDL.ActionFetchHTMLMediaCaptureAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/html-media-capture/');
end;

procedure TFormWebIDL.ActionFetchMediaStreamRecordingAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/mediastream-recording/');
end;

procedure TFormWebIDL.ActionFetchMidiAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/webmidi/');
end;

procedure TFormWebIDL.ActionFetchNetworkInformationAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/netinfo-api/');
end;

procedure TFormWebIDL.ActionFetchNetworkServiceDiscoveryAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/discovery-api/');
end;

procedure TFormWebIDL.ActionFetchPageVisibilityAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/page-visibility/');
end;

procedure TFormWebIDL.ActionFetchPerformanceTimeLineAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/performance-timeline/');
end;

procedure TFormWebIDL.ActionFetchPickContactsIntentAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/contacts-api/');
end;

procedure TFormWebIDL.ActionFetchPickMediaIntendAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/gallery/');
end;

procedure TFormWebIDL.ActionFetchProximityAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/proximity/');
end;

procedure TFormWebIDL.ActionFetchResourceTimingAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/resource-timing/');
end;

procedure TFormWebIDL.ActionFetchServerSendEventsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/eventsource/');
end;

procedure TFormWebIDL.ActionFetchSVGExecute(Sender: TObject);
var
  Urls: TArrayOfString;
begin
  SetLength(Urls, 19);
  Urls[ 0] := 'http://www.w3.org/TR/SVG11/types.html#BasicDOMInterfaces';
  Urls[ 1] := 'http://www.w3.org/TR/SVG11/styling.html#DOMInterfaces';
  Urls[ 2] := 'http://www.w3.org/TR/SVG11/struct.html#DOMInterfaces';
  Urls[ 3] := 'http://www.w3.org/TR/SVG11/coords.html#DOMInterfaces';
  Urls[ 4] := 'http://www.w3.org/TR/SVG11/paths.html#DOMInterfaces';
  Urls[ 5] := 'http://www.w3.org/TR/SVG11/shapes.html#DOMInterfaces';
  Urls[ 6] := 'http://www.w3.org/TR/SVG11/text.html#DOMInterfaces';
  Urls[ 7] := 'http://www.w3.org/TR/SVG11/painting.html#DOMInterfaces';
  Urls[ 8] := 'http://www.w3.org/TR/SVG11/color.html#DOMInterfaces';
  Urls[ 9] := 'http://www.w3.org/TR/SVG11/pservers.html#DOMInterfaces';
  Urls[10] := 'http://www.w3.org/TR/SVG11/masking.html#DOMInterfaces';
  Urls[11] := 'http://www.w3.org/TR/SVG11/filters.html#DOMInterfaces';
  Urls[12] := 'http://www.w3.org/TR/SVG11/interact.html#DOMInterfaces';
  Urls[13] := 'http://www.w3.org/TR/SVG11/linking.html#DOMInterfaces';
  Urls[14] := 'http://www.w3.org/TR/SVG11/script.html#DOMInterfaces';
  Urls[15] := 'http://www.w3.org/TR/SVG11/animate.html#DOMInterfaces';
  Urls[16] := 'http://www.w3.org/TR/SVG11/fonts.html#DOMInterfaces';
  Urls[17] := 'http://www.w3.org/TR/SVG11/metadata.html#DOMInterfaces';
  Urls[18] := 'http://www.w3.org/TR/SVG11/extend.html#DOMInterfaces';
  FetchFromURLs(Urls);
end;

procedure TFormWebIDL.ActionFetchUserTimingsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/user-timing/');
end;

procedure TFormWebIDL.ActionFetchVibrationAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/vibration/');
end;

procedure TFormWebIDL.ActionFetchWacAccelerometerExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/accelerometer/index.html');
end;

procedure TFormWebIDL.ActionFetchWacCalenderExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/calendar/index.html');
end;

procedure TFormWebIDL.ActionFetchWacCameraExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/camera/index.html');
end;

procedure TFormWebIDL.ActionFetchWacContactsExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/contacts/index.html');
end;

procedure TFormWebIDL.ActionFetchWacCoreExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/core/index.html');
end;

procedure TFormWebIDL.ActionFetchWacDeviceIntegrationExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/deviceinteraction/index.html');
end;

procedure TFormWebIDL.ActionFetchWacDeviceStatusExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/devicestatus/index.html');
end;

procedure TFormWebIDL.ActionFetchWacFileSystemExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/filesystem/index.html');
end;

procedure TFormWebIDL.ActionFetchWacGeolocationExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/geolocation/index.html');
end;

procedure TFormWebIDL.ActionFetchWacMessagingExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/messaging/index.html');
end;

procedure TFormWebIDL.ActionFetchWacOrientationExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/orientation/index.html');
end;

procedure TFormWebIDL.ActionFetchWacTasksExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/tasks/index.html');
end;

procedure TFormWebIDL.ActionFetchWacViewpointFeatureExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/viewport/index.html');
end;

procedure TFormWebIDL.ActionFetchWacWebviewExecute(Sender: TObject);
begin
  FetchFromURL('http://specs.wacapps.net/webview/index.html');
end;

procedure TFormWebIDL.ActionFetchWebAudioAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/webaudio/');
end;

procedure TFormWebIDL.ActionFetchWebCLExecute(Sender: TObject);
begin
  FetchFromURL('http://www.khronos.org/registry/webcl/specs/1.0.0/');
end;

procedure TFormWebIDL.ActionFetchWebCryptoKeyDiscoveryAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/webcrypto-key-discovery/');
end;

procedure TFormWebIDL.ActionFetchWebinosApp2AppMessagingAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/app2app.html');
end;

procedure TFormWebIDL.ActionFetchWebinosAppStateSynchronisationAPIExecute(
  Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/appstatesync.html');
end;

procedure TFormWebIDL.ActionFetchWebinosAuthenticationAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/authentication.html');
end;

procedure TFormWebIDL.ActionFetchWebinosContactsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/contacts.html');
end;

procedure TFormWebIDL.ActionFetchWebinosContextAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/context.html');
end;

procedure TFormWebIDL.ActionFetchWebinosCoreInterfaceAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/webinoscore.html');
end;

procedure TFormWebIDL.ActionFetchWebinosDeviceInteractionAPIExecute(
  Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/deviceinteraction.html');
end;

procedure TFormWebIDL.ActionFetchWebinosDeviceStatusAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/devicestatus.html');
end;

procedure TFormWebIDL.ActionFetchWebinosGenericActuatorAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/actuators.html');
end;

procedure TFormWebIDL.ActionFetchWebinosMediaContentAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/MediaContent.html');
end;

procedure TFormWebIDL.ActionFetchWebinosTVControlAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/tv.html');
end;

procedure TFormWebIDL.ActionFetchWebinosVehicleAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/vehicle.html');
end;

procedure TFormWebIDL.ActionFetchWebinosWidgetAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/widget.html');
end;

procedure TFormWebIDL.ActionFetchWebIntentsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/web-intents/');
end;

procedure TFormWebIDL.ActionFetchWebKitIDLExecute(Sender: TObject);
begin
  FetchFromURL('http://trac.webkit.org/wiki/WebKitIDL');
end;

procedure TFormWebIDL.ActionFetchWebRTCExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/webrtc/');
end;

procedure TFormWebIDL.ActionFetchWebSocketAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/websockets/');
end;

procedure TFormWebIDL.ActionFetchWebSpeechApiExecute(Sender: TObject);
begin
   FetchFromURL('https://dvcs.w3.org/hg/speech-api/raw-file/tip/speechapi.html');
end;

procedure TFormWebIDL.ActionFetchWebWorkersAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/workers/');
end;

procedure TFormWebIDL.ActionFetchWidgetInterfaceAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/widgets-apis/');
end;

procedure TFormWebIDL.ActionFetchWebinosAppLauncherExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/launcher.html');
end;

procedure TFormWebIDL.ActionFetchWebinosDiscoveryAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/servicediscovery.html');
end;

procedure TFormWebIDL.ActionFetchWebinosGenericSensorAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/sensors.html');
end;

procedure TFormWebIDL.ActionFetchWebinosMessagingAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/messaging.html');
end;

procedure TFormWebIDL.ActionFetchWebinosNavigationAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/navigation.html');
end;

procedure TFormWebIDL.ActionFetchWebinosNFCAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/nfc.html');
end;

procedure TFormWebIDL.ActionFetchWebinosPaymentAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/payment.html');
end;

procedure TFormWebIDL.ActionFetchWebinosRemoteUIAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/remoteui.html');
end;

procedure TFormWebIDL.ActionFetchWebinosSecureElementAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/secureelements.html');
end;

procedure TFormWebIDL.ActionFetchWebinosWebNotificationsAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://dev.webinos.org/specifications/draft/notifications.html');
end;

procedure TFormWebIDL.ActionFileOpenAccept(Sender: TObject);
begin
  Assert(Sender is TFileOpen);
  with TFileOpen(Sender) do
  begin
    case Dialog.FilterIndex of
      1:
        SynEditHTML.Lines.LoadFromFile(Dialog.FileName);
      2:
        LoadWebIdlFromFile(Dialog.FileName);
    end;
  end;
end;

procedure TFormWebIDL.ActionFileSaveAsAccept(Sender: TObject);
begin
  Assert(Sender is TFileSaveAs);
  with TFileSaveAs(Sender) do
    case Dialog.FilterIndex of
      1:
        begin
          SaveWebIdlToFile(Dialog.FileName);
        end;
      2:
        with SynExporterHTML do
        begin
          Highlighter := FHighlighter;
          Title := FTitle;
          ExportAsText := True;
          ExportAll(SynEditWebIDL.Lines);
          SaveToFile(Dialog.FileName);
        end;
      3:
        begin
          SynEditDWS.Lines.SaveToFile(Dialog.FileName);
        end;
    end;
end;

procedure TFormWebIDL.ActionFileSaveAsBeforeExecute(Sender: TObject);
begin
  Assert(Sender is TFileSaveAs);
  TFileSaveAs(Sender).Dialog.FileName := FTitle;
  case PageControl.TabIndex of
    0: TFileSaveAs(Sender).Dialog.FilterIndex := 2;
    1: TFileSaveAs(Sender).Dialog.FilterIndex := 1;
    2:
      begin
        TFileSaveAs(Sender).Dialog.FilterIndex := 3;
        if FTitle = '' then
        begin
          if SynEditDWS.Lines.Count > 0 then
            TFileSaveAs(Sender).Dialog.FileName := Copy(SynEditDWS.Lines[0], 5, Length(SynEditDWS.Lines[0]) - 5);
        end;
      end;
  end;
end;

procedure TFormWebIDL.ActionTransformWebIDLExecute(Sender: TObject);
var
  Interpreter: TdwsWebIDLInterpreter;
  WebIDL: TdwsWebIDL;
  UnitName: string;
  Index: Integer;
  Msg: TdwsMessage;
  Node: PVirtualNode;
  NodeData: PTreeMessage;
begin
  SynEditDWS.Clear;
  TreeMessages.Clear;

  UnitName := Trim(FTitle);
  Index := 1;
  while Index < Length(UnitName) do
  begin
    if CharInSet(UnitName[Index], [' ', ':', '/']) or (Ord(UnitName[Index]) >= $80) then
      Delete(UnitName, Index, 1)
    else
      Inc(Index);
  end;

  if Length(UnitName) > 3 then
  begin
    Index := Pos('API', UnitName);
    if Index = Length(UnitName) - 2 then
       Delete(UnitName, Length(UnitName) - 2, 3);
  end;

  Interpreter := TdwsWebIDLInterpreter.Create;
  try
    WebIDL := Interpreter.Parse(SynEditWebIDL.Text);
    SynEditDWS.Text := WebIDL.AsPascalCode;

    SynEditDWS.Lines.Insert(0, 'unit ' + UnitName + ';');
    SynEditDWS.Lines.Insert(1, '');
    SynEditDWS.Lines.Insert(2, 'interface');
    SynEditDWS.Lines.Insert(3, '');

    PageControl.ActivePageIndex := 2;
  finally
    if Interpreter.Msgs.HasErrors then
    begin
      OutputDebugString(PWideChar(Interpreter.Msgs.AsInfo));

      for Index := 0 to Interpreter.Msgs.Count - 1 do
      begin
        Msg := Interpreter.Msgs.Msgs[Index];
        Node := TreeMessages.AddChild(TreeMessages.RootNode);
        NodeData := TreeMessages.GetNodeData(Node);
        NodeData^.Text := Msg.AsInfo;
        if Msg is TScriptMessage then
        begin
          NodeData^.Col := TScriptMessage(Msg).ScriptPos.Col;
          NodeData^.Line := TScriptMessage(Msg).ScriptPos.Line;
        end
        else
        begin
          NodeData^.Line := -1;
          NodeData^.Col := 0;
        end;
      end;

      TabWebIDL.Show;
      SynEditWebIDL.SetFocus;

      for Index := Interpreter.Msgs.Count - 1 downto 0 do
        if Interpreter.Msgs.Msgs[Index] is TErrorMessage then
        begin
          SynEditWebIDL.GotoLineAndCenter(TErrorMessage(Interpreter.Msgs.Msgs[Index]).Line);
          SynEditWebIDL.CaretX := TErrorMessage(Interpreter.Msgs.Msgs[Index]).Col;
          Break;
        end;

      TreeMessages.Visible := True;
      SplitterMessages.Visible := True;
    end;

    Interpreter.Free;
  end;
end;

procedure TFormWebIDL.ActionFetchFileAPIExecute(Sender: TObject);
begin
  FetchFromURL('http://www.w3.org/TR/FileAPI/');
end;

procedure TFormWebIDL.AppendString(Value: string);
var
  InnerText: TStringList;
  InnerTextIndex: Integer;
begin
  SynEditWebIDL.BeginUpdate;
  try
    InnerText := TStringList.Create;
    with InnerText do
    try
      InnerText.Text := Value;
      for InnerTextIndex := 0 to InnerText.Count - 1 do
        SynEditWebIDL.Lines.Add(InnerText.Strings[InnerTextIndex]);
      SynEditWebIDL.Lines.Add('');
    finally
      Free;
    end;
  finally
    SynEditWebIDL.EndUpdate;
  end;
end;

procedure TFormWebIDL.StatusBarDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
  const Rect: TRect);
var
  R: TRect;
begin
  if Panel.Index = 2 then
  begin
    StatusBar.Canvas.Brush.Color := clMenuHighlight;
    R := System.Classes.Rect(Rect.Left, Rect.Top,
      Round(FProgress * Rect.Right), Rect.Bottom);
    StatusBar.Canvas.FillRect(R);
  end;
end;

procedure TFormWebIDL.SynEditStatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
begin
  if ([scCaretX, scCaretY] * Changes) <> [] then
    StatusBar.Panels[0].Text :=
      'X: ' + IntToStr(TSynEdit(Sender).CaretX) + ' ' +
      'Y: ' + IntToStr(TSynEdit(Sender).CaretY);
end;

procedure TFormWebIDL.TreeMessagesDblClick(Sender: TObject);
var
  NodeData: PTreeMessage;
begin
  Assert(Sender is TBaseVirtualTree);
  if not Assigned(TBaseVirtualTree(Sender).FocusedNode) then
    Exit;

  NodeData := TBaseVirtualTree(Sender).GetNodeData(TBaseVirtualTree(Sender).FocusedNode);

  if NodeData^.Line >= 0 then
  begin
    SynEditWebIDL.GotoLineAndCenter(NodeData.Line);
    SynEditWebIDL.CaretX := NodeData.Col;
    SynEditWebIDL.SetFocus;
  end;
end;

procedure TFormWebIDL.TreeMessagesFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
var
  NodeData: PTreeMessage;
begin
  NodeData := Sender.GetNodeData(Node);
  Finalize(NodeData^);
end;

procedure TFormWebIDL.TreeMessagesGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  NodeData: PTreeMessage;
begin
  NodeData := Sender.GetNodeData(Node);
  CellText := NodeData^.Text;
end;

procedure TFormWebIDL.SynEditGutterPaint(Sender: TObject; aLine, X,
  Y: Integer);
var
  StrLineNumber: string;
  LineNumberRect: TRect;
  GutterWidth, Offset: Integer;
  OldFont: TFont;
begin
  with TSynEdit(Sender), Canvas do
  begin
    Brush.Style := bsClear;
    GutterWidth := Gutter.Width - 5;
    if (ALine = 1) or (ALine = CaretY) or ((ALine mod 10) = 0) then
    begin
      StrLineNumber := IntToStr(ALine);
      LineNumberRect := Rect(x, y, GutterWidth, y + LineHeight);
      OldFont := TFont.Create;
      try
        OldFont.Assign(Canvas.Font);
        Canvas.Font := Gutter.Font;
        Canvas.TextRect(LineNumberRect, StrLineNumber, [tfVerticalCenter,
          tfSingleLine, tfRight]);
        Canvas.Font := OldFont;
      finally
        OldFont.Free;
      end;
    end
    else
    begin
      Canvas.Pen.Color := Gutter.Font.Color;
      if (ALine mod 5) = 0 then
        Offset := 5
      else
        Offset := 2;
      Inc(y, LineHeight div 2);
      Canvas.MoveTo(GutterWidth - Offset, y);
      Canvas.LineTo(GutterWidth, y);
    end;
  end;
end;

procedure TFormWebIDL.UpdateProgress(Value: Single);
begin
  FProgress := Value;
  StatusBar.Invalidate;
  Application.ProcessMessages;
end;

end.
