{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvPropertyStoreEditorIntf.pas, released on 2008-01-01.

The Initial Developer of the Original Code is Jens Fudickar
All Rights Reserved.

Contributor(s):
  Jens Fudickar [jens dott fudickar att oratool dott de]

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.delphi-jedi.org

Known Issues:
-----------------------------------------------------------------------------}
// $Id: JvPropertyStoreEditorIntf.pas 99 2009-07-19 11:15:47Z obones $
unit JvPropertyStoreEditorIntf;

{$I jvcl.inc}

interface

uses
  {$IFDEF UNITVERSIONING}
  JclUnitVersioning,
  {$ENDIF UNITVERSIONING}
  Classes;

type
  IJvPropertyEditorHandler = interface
    ['{7DD4CC1F-335E-44F7-AE90-9DB630BF5B31}']
    function EditIntf_GetVisibleObjectName : string;
    function EditIntf_TranslatePropertyName (const PropertyName : string) : string;
    function EditIntf_GetObjectHint : string;
    function EditIntf_GetPropertyHint(const PropertyName : string) : string;
    function EditIntf_DisplayProperty (const PropertyName : string) : Boolean;
    function EditIntf_IsPropertySimple (const PropertyName : string) : Boolean;
  end;

  IJvPropertyListEditorHandler = interface
    ['{BC1F664F-867F-4041-B718-0FD76A0CA3E8}']
    function ListEditIntf_ObjectCount : integer;
    function ListEditIntf_GetObject(Index : integer): TPersistent;
    procedure ListEditIntf_MoveObjectPosition (Index : Integer; PosDelta : Integer);
    procedure ListEditIntf_SortObjects (iAscending : Boolean);
    function ListEditIntf_CreateNewObject: TPersistent;
    function ListEditIntf_CloneNewObject(Index : integer): TPersistent;
    procedure ListEditIntf_DeleteObject (Index : integer);
  end;

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL: https://jvcl.svn.sourceforge.net:443/svnroot/jvcl/trunk/jvcl/run/JvPropertyStoreEditorIntf.pas $';
    Revision: '$Revision: 99 $';
    Date: '$Date: 2009-07-19 13:15:47 +0200 (dim., 19 juil. 2009) $';
    LogPath: 'JVCL\run'
  );
{$ENDIF UNITVERSIONING}

implementation


{$IFDEF UNITVERSIONING}
initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}


end.