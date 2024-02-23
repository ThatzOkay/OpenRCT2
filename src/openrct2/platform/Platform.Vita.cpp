/*****************************************************************************
* Copyright (c) 2014-2024 OpenRCT2 developers
*
* For a complete list of all authors, please refer to contributors.md
* Interested in contributing? Visit https://github.com/OpenRCT2/OpenRCT2
*
* OpenRCT2 is licensed under the GNU General Public License version 3.
*****************************************************************************/

#ifdef __vita__
#    include "Platform.h"

#    include "../core/Guard.hpp"
#    include "../localisation/Language.h"

namespace Platform
{
    std::string GetFolderPath(SPECIAL_FOLDER folder)
    {
        // Vita builds currently only read from ux0/data*
        switch (folder)
        {
            case SPECIAL_FOLDER::USER_CACHE:
            case SPECIAL_FOLDER::USER_CONFIG:
            case SPECIAL_FOLDER::USER_DATA:
            case SPECIAL_FOLDER::USER_HOME:
                return "ux0:/data";
            default:
                return std::string();
        }
    }

    std::string GetDocsPath()
    {
        return std::string();
    }

    std::string GetInstallPath()
    {
        return "ux0:/data/OpenRCT2";
    }

    std::string GetCurrentExecutablePath()
    {
        Guard::Assert(false, "GetCurrentExecutablePath() not implemented for Android.");
        return std::string();
    }

    u8string StrDecompToPrecomp(u8string_view input)
    {
        return u8string(input);
    }

    bool HandleSpecialCommandLineArgument(const char* argument)
    {
        return false;
    }

    uint16_t GetLocaleLanguage()
    {
        return LANGUAGE_ENGLISH_US;
    }

    CurrencyType GetLocaleCurrency()
    {
        return Platform::GetCurrencyValue("NL");
    }

    MeasurementFormat GetLocaleMeasurementFormat()
    {
        return MeasurementFormat::Imperial;
    }

    std::string GetSteamPath()
    {
        return {};
    }

#    ifndef NO_TTF
    std::string GetFontPath(const TTFFontDescriptor& font)
    {
        return {};
    }
#    endif
}

#endif