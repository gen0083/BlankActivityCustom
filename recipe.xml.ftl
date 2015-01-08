<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <instantiate from="res/layout/activity_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/activities/package-info-activities.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/activities/package-info.java" />
    <instantiate from="src/app_package/fragments/package-info-fragments.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/fragments/package-info.java" />
    <instantiate from="src/app_package/managers/package-info-managers.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/managers/package-info.java" />
    <instantiate from="src/app_package/models/package-info-models.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/models/package-info.java" />
    <instantiate from="src/app_package/network/package-info-network.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/network/package-info.java" />
    <instantiate from="src/app_package/utils/package-info-utils.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/utils/package-info.java" />
    <instantiate from="src/app_package/views/package-info-views.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/views/package-info.java" />
    <instantiate from="src/app_package/views/actionbar/package-info-actionbar.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/views/actionbar/package-info.java" />
    <instantiate from="src/app_package/views/adapters/package-info-adapters.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/views/adapters/package-info.java" />
    <instantiate from="src/app_package/views/notifications/package-info-notifications.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/views/notifications/package-info.java" />
    <instantiate from="src/app_package/views/widgets/package-info-widgets.java.ftl"
	    to="${escapeXmlAttribute(srcOut)}/views/widgets/package-info.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
